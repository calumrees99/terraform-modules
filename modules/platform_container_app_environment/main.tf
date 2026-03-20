locals {
  base_name = "${var.product_name}-${var.service_name}-${var.environment}-${var.location_short_name}"
}

module "resource_group" {
  source = "../governance/resource_group"
  base_name = local.base_name
  location = var.location
  tags = var.tags
}

module "vnet" {
  source = "../networking/virtual_network"
  base_name = local.base_name
  location = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "subnet" {
  source = "../networking/subnet"
  name = "${local.base_name}-cae-snet"
  resource_group_name = module.resource_group.name
  virtual_network_name = module.vnet.name
  address_prefixes = ["10.0.0.0/21"]
  delegations = [
    {
      name = "cae-delegation"
      service_delegation = {
        name = "Microsoft.App/environments"
        actions = [
          "Microsoft.Network/virtualNetworks/subnets/action"
        ]
      }
    }
  ]
}

module "container_app_environment" {
  source = "../containers/container_app_environment"
  base_name = local.base_name
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  infrastructure_subnet_id = module.subnet.id
}