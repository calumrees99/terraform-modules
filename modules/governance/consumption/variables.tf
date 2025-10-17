variable "budgetName" {
  type        = string
  description = "Required - The name which should be used for this budget"
}

variable "budgetAmount" {
  type        = number
  description = "Required - The total amount of cost to track with the budget."
}

variable "timeGrain" {
  type        = string
  description = "Required - The time covered by a budget. Tracking of the amount will be reset based on the time grain."
}

variable "start_date" {
  type        = string
  description = "Required - The start date for the budget. The start date must be first of the month and should be less than the end date"
  default     = "2025-10-01T00:00:00Z"
}

variable "notification" {
  type = object({
    enabled        = bool
    threshold      = number
    operator       = string
    threshold_type = string
    contact_emails = list(string)
  })
  description = "Required - Notfication of budget being reached"
}
