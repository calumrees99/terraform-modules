variable "base_name" {
  type        = string
  description = "Required. The name of the resource"
}

variable "location" {
  type        = string
  description = "Required. The Azure region where the resource group will be created. Examples include 'eastus', 'westeurope', etc."
}

variable "resource_group_name" {
  type = string
  description = "Required. The resource group where the container app environment will be created."
}
variable "tags" {
  description = "Optional. Tagging to be applied to resources within the resource group."
  type = map(string)
  default = {}
}

variable "infrastructure_subnet_id" {
  type = string
  description = "Optional. The ID of the subnet to deploy the container app environment into. If not provided, the container app environment will be deployed without a virtual network."
  default = null
}