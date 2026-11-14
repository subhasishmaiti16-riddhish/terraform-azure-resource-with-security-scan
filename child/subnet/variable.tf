variable "subnet-security" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
variable "nsg_id" {
  description = "NSG ID to associate with all subnets."
  type        = string
}