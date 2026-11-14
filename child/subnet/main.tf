resource "azurerm_subnet" "subnet-security" {
  #checkov:skip=CKV2_AZURE_31:NSG is associated via separate nsg_associate module
  for_each             = var.subnet-security
  name                 = each.value.subnet_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}
resource "azurerm_subnet_network_security_group_association" "assoc" {
  for_each                  = azurerm_subnet.subnet-security
  subnet_id                 = each.value.id
  network_security_group_id = var.nsg_id
}
