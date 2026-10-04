output "subnet_id" {
  description = "The ID of the AKS subnet."
  value       = azurerm_subnet.aks_subnet.id
}

output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the Virtual Network."
  value       = azurerm_virtual_network.vnet.name
}
