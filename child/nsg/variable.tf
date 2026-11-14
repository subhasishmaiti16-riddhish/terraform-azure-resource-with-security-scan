variable "nsg" {
  description = "A map of network security groups to create."
  type = map(object({
    nsg_name   = string
    location   = string
    rg_name    = string
  }))
}