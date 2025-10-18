budgets = {
  poc-rg-budget-quarterly = {
    resource_group_id = "/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>"
    budget_amount     = 10
    time_grain        = "Monthly"
    notification = {
      enabled        = true
      threshold      = 90.0
      operator       = "EqualTo"
      threshold_type = "Forecasted"
      contact_emails = ["example@domain.com"]
    }
  }
}


