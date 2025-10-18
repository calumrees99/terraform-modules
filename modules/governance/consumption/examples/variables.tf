variable "budgets" {
  type = map(object({
    managementGroupId = optional(string)
    subscriptionId    = optional(string)
    resourceGroupId   = optional(string)
    budgetAmount      = number
    timeGrain         = string
    notification = object({
      enabled        = bool
      threshold      = number
      operator       = string
      threshold_type = string
      contact_emails = list(string)
    })
  }))
}
