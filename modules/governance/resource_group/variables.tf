variable "base_name" {
  type        = string
  description = "Required. The name of the resource group to be created. Must be unique within the subscription and adhere to Azure naming conventions."
}

variable "location" {
  type        = string
  description = "Required. The Azure region where the resource group will be created. Examples include 'eastus', 'westeurope', etc."
}

variable "tags" {
  description = "Optional. Tagging to be applied to resources within the resource group."
  type = map(string)
  default = {}
}