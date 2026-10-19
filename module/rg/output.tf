output "rg_name" {
  description = "resource group name"
  value       = azurerm_resource_group.neptune_spoke.name
}

output "rg_id" {
  description = "Resource group ID"
  value       = azurerm_resource_group.neptune_spoke.id
}

output "rg_location" {
  description = "Resource group location"
  value       = azurerm_resource_group.neptune_spoke.location
}