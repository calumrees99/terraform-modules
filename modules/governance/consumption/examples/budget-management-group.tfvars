budgets = {
  poc-mg-budget-monthly = {
    management_group_id = "/providers/Microsoft.Management/managementGroups/<managedmentGroupId>"
    budget_amount       = 10
    time_grain          = "Monthly"
    notification = {
      enabled        = true
      threshold      = 90.0
      operator       = "EqualTo"
      threshold_type = "Forecasted"
      contact_emails = ["example@domain.com"]
    }
  }
}


