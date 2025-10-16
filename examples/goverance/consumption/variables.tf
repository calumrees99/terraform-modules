variable "budgetName" {
  type        = string
  description = "The name which should be used for this budget"
}

variable "timeGrain" {
  type        = string
  description = "The time covered by a budget. Tracking of the amount will be reset based on the time grain."
}

variable "notification" {
  type = object({
    enabled        = bool
    threshold      = number
    operator       = string
    threshold_type = string
    contact_emails = list(string)
  })
  description = "Notfication of budget being reached"
}
