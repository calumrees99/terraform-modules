budgets = {
  poc-sub-budget-yearly = {
    subscription_id = "/subscriptions/<subscriptionId>"
    budget_amount   = 100
    time_grain      = "Annually"
    notification = {
      enabled        = true
      threshold      = 90.0
      operator       = "EqualTo"
      threshold_type = "Forecasted"
      contact_emails = ["example@domain.com"]
    }
  }
}


