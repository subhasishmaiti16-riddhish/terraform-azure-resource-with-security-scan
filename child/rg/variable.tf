variable "rg-security" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}