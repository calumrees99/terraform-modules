variable "budgets" {
  type = map(object({
    budgetAmount = number
    timeGrain    = string
    notification = object({
      enabled        = bool
      threshold      = number
      operator       = string
      threshold_type = string
      contact_emails = list(string)
    })
  }))
}
