module "budget" {
  for_each            = var.budgets
  source              = "../"
  budget_name         = each.key
  budget_amount       = each.value.budget_amount
  time_grain          = each.value.time_grain
  notification        = each.value.notification
  management_group_id = each.value.management_group_id
  subscription_id     = each.value.subscription_id
  resource_group_id   = each.value.resource_group_id
}
