variable "product_name" {
  type = string
  description = "Required. The name of the product to be created."
}
variable "service_name" {
  type        = string
  description = "Required. The name of the service to be created."
}

variable "location" {
  type        = string
  description = "Required. The Azure region where the resource group will be created. Examples include 'eastus', 'westeurope', etc."
}

variable "location_short_name" {
  type = string
  description = "Required. Short name for the Azure region, used for naming resources. Examples include 'eus' for 'eastus', 'weu' for 'westeurope', etc."
}
variable "environment" {
  type = string
  description = "Required. Environment which resource is deployed to"
}

variable "tags" {
  type = map(string)
  description = "Optional. Tagging to be applied to resources within the resource group."
}
