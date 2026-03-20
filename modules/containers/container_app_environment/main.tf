resource "azurerm_container_app_environment" "example" {
  name                = "${var.base_name}-cae"
  location            = var.location
  resource_group_name = var.resource_group_name
  public_network_access = "Disabled"
  infrastructure_subnet_id = var.infrastructure_subnet_id
  
  workload_profile {
    name = "Consumption"
    workload_profile_type = "Consumption"
    maximum_count = 1
    minimum_count = 0
  }
}