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
  source = "../../modules/subnet_network_security_group_association"
  config = {
    for key, association in var.subnet_network_association_group : key => {
      subnet_id = module.azurerm_subnet.subnet_ids[association.subnet_key]

      network_security_group_id = module.network_security_group.network_security_group_ids[association.nsg_key]
    }
  }
  depends_on = [module.network_security_group, module.azurerm_subnet]
}
