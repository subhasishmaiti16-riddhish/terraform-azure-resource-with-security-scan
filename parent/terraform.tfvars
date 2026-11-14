rg-security-dev = {
  rg-security = {
    rg_name  = "mama-security-update-rg"
    location = "East US"
  }
}
vnet-security-dev = {
  vnet-security = {
    vnet_name     = "mama-security-update-vnet"
    rg_name       = "mama-security-update-rg"
    location      = "East US"
    address_space = ["10.0.0.0/16"]
  }
}
subnet-security-dev = {
  subnet-security = {
    subnet_name      = "mama-security-update-subnet"
    rg_name          = "mama-security-update-rg"
    vnet_name        = "mama-security-update-vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet-security1 = {
    subnet_name      = "mama-security-update-subnet1"
    rg_name          = "mama-security-update-rg"
    vnet_name        = "mama-security-update-vnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}
nsg-security-dev = {
  nsg-security = {
    nsg_name = "mama-security-update-nsg"
    location = "East US"
    rg_name  = "mama-security-update-rg"
  }
}
nsg-rules-security-dev = {
  nsg-rules = {
    rule_name = "Allow-SSH-From-Bastion"
    priority  = 100
    port      = "22"
    source    = "10.0.2.0/24"
    rg_name   = "mama-security-update-rg"
    nsg_name  = "mama-security-update-nsg"
  }
}
