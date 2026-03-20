output "name" {
  description = "The name of the resource group created by this module."
  value       = azurerm_resource_group.example.name
}

output "location" {
  description = "The location of the resource group created by this module."
  value       = azurerm_resource_group.example.location
}

output "id" {
  description = "The resource group resource id"
  value = azurerm_resource_group.example.id
}