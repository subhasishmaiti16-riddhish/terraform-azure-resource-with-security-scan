resource "azurerm_network_security_rule" "ssh" {
  for_each = var.nsg_rules

  name                        = each.value.rule_name
  priority                    = each.value.priority
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value.port
  source_address_prefix       = each.value.source
  destination_address_prefix  = "*"

  resource_group_name         = each.value.rg_name
  network_security_group_name = each.value.nsg_name
}