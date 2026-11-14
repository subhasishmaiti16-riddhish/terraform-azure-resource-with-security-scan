locals {
  nsg_security_dev = {
    for k, v in var.nsg-security-dev : k => merge(v, {
      rg_name = module.rg_security_dev.rg_names["rg-security"]
    })
  }
}
