budgets = {
  poc-mg-budget-monthly = {
    managementGroupId = "/providers/Microsoft.Management/managementGroups/<managedmentGroupId>"
    budgetAmount      = 10
    timeGrain         = "Monthly"
    notification = {
      enabled        = true
      threshold      = 90.0
      operator       = "EqualTo"
      threshold_type = "Forecasted"
      contact_emails = ["example@domain.com"]
    }
  }
}


