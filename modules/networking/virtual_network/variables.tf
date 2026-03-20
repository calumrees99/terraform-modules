variable "base_name" {
  description = "Required. Base name for the resource"
  type = string
}
variable "location" {
  description = "Required. Location of the resource"
  type = string
}
variable "resource_group_name" {
  description = "Required. Name of the resource group in which to create the resource"
  type = string
}

variable "tags" {
  description = "Optional. Tags to be applied to resource"
  type = map(string)
  default = {}
}