resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "networking" {
  source              = "./modules/networking"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vnet_name           = var.vnet_name
  vnet_cidr           = var.vnet_cidr
  subnet_name         = var.subnet_name
  subnet_cidr         = var.subnet_cidr
}

module "aks_acr" {
  source              = "./modules/aks_acr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  acr_name            = var.acr_name
  aks_name            = var.aks_name
  subnet_id           = module.networking.subnet_id
  acr_sku             = var.acr_sku
  node_count          = var.node_count
  vm_size             = var.vm_size
  os_disk_size_gb     = var.os_disk_size_gb
}