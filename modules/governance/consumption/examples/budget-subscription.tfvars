budgets = {
  poc-sub-budget-yearly = {
    subscriptionId = "/subscriptions/<subscriptionId>"
    budgetAmount   = 100
    timeGrain      = "Annually"
    notification = {
      enabled        = true
      threshold      = 90.0
      operator       = "EqualTo"
      threshold_type = "Forecasted"
      contact_emails = ["example@domain.com"]
    }
  }
}


