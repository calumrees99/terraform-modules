variable "budgets" {
  type = map(object({
    management_group_id = optional(string)
    subscription_id     = optional(string)
    resource_group_id   = optional(string)
    budget_amount       = number
    time_grain          = string
    notification = object({
      enabled        = bool
      threshold      = number
      operator       = string
      threshold_type = string
      contact_emails = list(string)
    })
  }))
}
