module "budget" {
  for_each     = var.budgets
  source       = "../"
  budgetName   = each.key
  budgetAmount = each.value.budgetAmount
  timeGrain    = each.value.timeGrain
  notification = each.value.notification
}
