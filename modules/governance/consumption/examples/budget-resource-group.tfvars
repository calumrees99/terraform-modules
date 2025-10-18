budgets = {
  poc-rg-budget-quarterly = {
    resourceGroupId = "/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>"
    budgetAmount    = 100
    timeGrain       = "Monthly"
    notification = {
      enabled        = true
      threshold      = 90.0
      operator       = "EqualTo"
      threshold_type = "Forecasted"
      contact_emails = ["example@domain.com"]
    }
  }
}


