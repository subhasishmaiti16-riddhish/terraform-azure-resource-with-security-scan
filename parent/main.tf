module "rg_security_dev" {
  source      = "../child/rg"
  rg-security = var.rg-security-dev
}
module "vnet_security_dev" {
  depends_on    = [module.rg_security_dev]
  source        = "../child/vnet"
  vnet-security = var.vnet-security-dev
}
module "subnet_security_dev" {
  source          = "../child/subnet"
  subnet-security = var.subnet-security-dev
  nsg_id          = module.nsg_security_dev.nsg_ids["nsg-security"]
  depends_on      = [module.vnet_security_dev, module.nsg_security_dev]
}
module "nsg_security_dev" {
  source     = "../child/nsg"
  nsg        = local.nsg_security_dev
  depends_on = [module.rg_security_dev]
}
module "nsg_rule_security_dev" {
  depends_on = [module.nsg_security_dev, module.rg_security_dev]
  source     = "../child/nsg_rule"
  nsg_rules  = var.nsg-rules-security-dev
}
