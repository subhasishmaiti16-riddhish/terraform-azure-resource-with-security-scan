variable "nsg_rules" {
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
