module "azurerm_resource_group" {
  source = "../../modules/resource-group"
  config = var.resource_group
}

module "azurerm_virtual_network" {
  source     = "../../modules/virtual-network"
  config     = var.virtual_network
  depends_on = [module.azurerm_resource_group]
}

module "azurerm_subnet" {
  source     = "../../modules/subnet"
  config     = var.subnets
  depends_on = [module.azurerm_virtual_network]
}
