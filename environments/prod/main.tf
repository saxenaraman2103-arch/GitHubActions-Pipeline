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

module "network_security_group" {
  source     = "../../modules/network-security-group"
  config     = var.network_security_group
  depends_on = [module.azurerm_resource_group]
}

module "subnet_network_association_group" {
  source     = "../../modules/subnet-network-association-group"
  config     = var.subnet_network_association_group
  depends_on = [module.network_security_group, module.azurerm_subnet]
}
