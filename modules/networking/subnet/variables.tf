variable "name" {
  description = "Required. Name of resource"
  type = string
}
variable "resource_group_name" {
  description = "Required. Name of the resource group in which to create the resource"
  type = string
}
variable "virtual_network_name" {
  description = "Required. Name of the virtual network to which the subnet belongs"
  type = string
}
variable "address_prefixes" {
  description = "Required. List of address prefixes for the subnet"
  type = list(string)
}
variable "delegations" {
  description = "List of subnet delegations"
  type = list(object({
    name = string
    service_delegation = object({
      name    = string
      actions = optional(list(string))
    })
  }))
  default = []
}