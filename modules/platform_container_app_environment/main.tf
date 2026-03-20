locals {
  base_name = "${var.product_name}-${var.service_name}-${var.environment}-${var.location_short_name}"
}

module "resource_group" {
  source = "../governance/resource-group"
  resource_group_name = local.base_name
  location = var.location
  tags = var.tags
}