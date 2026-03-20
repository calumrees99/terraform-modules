locals {
  delegations = var.delegations != null ? [
    for delegation in var.delegations : {
      name = delegation.name
      service_delegation = {
        serviceName = delegation.service_delegation.name
        actions = delegation.service_delegation.actions
      }
    }
  ] : []
}