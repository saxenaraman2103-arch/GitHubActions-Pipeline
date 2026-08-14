resource "azurerm_network_security_group" "this" {
  for_each            = var.config
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}
