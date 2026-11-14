variable "rg-security-dev" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}
variable "vnet-security-dev" {
  type = map(object({
    vnet_name     = string
    rg_name       = string
    location      = string
    address_space = list(string)
  }))
}
variable "subnet-security-dev" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
variable "nsg-security-dev" {
  description = "A map of network security groups to create."
  type = map(object({
    nsg_name = string
    location = string
    rg_name  = string
  }))
}
variable "nsg-rules-security-dev" {
  description = "A map of network security group rules to create."
  type = map(object({
    rule_name = string
    priority  = number
    port      = string
    source    = string
    rg_name   = string
    nsg_name  = string
  }))
}
