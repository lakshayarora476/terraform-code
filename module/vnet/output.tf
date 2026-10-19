output "vnet_rg" {
  description = "Vnet resource group"
  value       = azurerm_virtual_network.neptune_vnet.resource_group_name

}

output "vnet_location" {
  description = "Vnet location"
  value       = azurerm_virtual_network.neptune_vnet.location

}

output "vnet_name" {
  description = "Vnet location"
  value       = azurerm_virtual_network.neptune_vnet.name

}