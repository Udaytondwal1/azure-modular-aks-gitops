output "resource_group_name" {
  description = "The name of the Azure Resource Group."
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "The location of the Azure Resource Group."
  value       = azurerm_resource_group.rg.location
}

output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = module.networking.vnet_id
}

output "vnet_name" {
  description = "The name of the Virtual Network."
  value       = module.networking.vnet_name
}

output "subnet_id" {
  description = "The ID of the AKS subnet."
  value       = module.networking.subnet_id
}

output "acr_id" {
  description = "The ID of the Azure Container Registry."
  value       = module.aks_acr.acr_id
}

output "acr_login_server" {
  description = "The login server URL for the Azure Container Registry."
  value       = module.aks_acr.acr_login_server
}

output "aks_id" {
  description = "The ID of the AKS cluster."
  value       = module.aks_acr.aks_id
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster."
  value       = module.aks_acr.aks_name
}
