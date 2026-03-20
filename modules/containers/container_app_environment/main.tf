resource "azurerm_container_app_environment" "example" {
  name                = var.resource_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
}