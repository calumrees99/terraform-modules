module "budget" {
  for_each          = var.budgets
  source            = "../"
  budgetName        = each.key
  budgetAmount      = each.value.budgetAmount
  timeGrain         = each.value.timeGrain
  notification      = each.value.notification
  managementGroupId = each.value.managementGroupId
  subscriptionId    = each.value.subscriptionId
  resourceGroupId   = each.value.resourceGroupId
}
