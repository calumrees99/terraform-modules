module "budget" {
  for_each     = var.budgets
  source       = "../../../modules/governance/consumption"
  budgetName   = each.key
  budgetAmount = each.value.budgetAmount
  timeGrain    = each.value.timeGrain
  notification = each.value.notification
}
