variable "budget_name" {
  type        = string
  description = "Required. The display name of the budget. This name will be used to identify the budget within Azure Cost Management."
}

variable "budget_amount" {
  type        = number
  description = "Required. The total monetary amount allocated for this budget. Costs tracked against this amount will trigger notifications based on defined thresholds."
}

variable "time_grain" {
  type        = string
  description = "Required. The time interval for budget tracking and reset (e.g., 'Monthly', 'Quarterly', or 'Annually'). Determines how often the budget cycle restarts."
}

variable "start_date" {
  type        = string
  description = "Required. The start date for the budget period in ISO 8601 format (YYYY-MM-DDThh:mm:ssZ). Must be the first day of a month and occur before the end date."
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
  description = <<EOT
Required. Configuration for budget notifications.  
- `enabled`: Whether the notification is active.  
- `threshold`: The percentage of the budget amount that triggers the alert.  
- `operator`: The comparison operator used to evaluate the threshold (e.g., 'GreaterThan').  
- `threshold_type`: The basis for the threshold (e.g., 'Actual' or 'Forecasted').  
- `contact_emails`: A list of email addresses to receive the notification.
EOT
}

variable "management_group_id" {
  type        = string
  description = "Optional. The Management Group ID where this budget and alert should be applied. Used for organization-wide budget tracking."
  default     = null
}

variable "subscription_id" {
  type        = string
  description = "Optional. The Subscription ID where the budget and alert should be applied. Used for subscription-level cost tracking."
  default     = null
}

variable "resource_group_id" {
  type        = string
  description = "Optional. The Resource Group ID where the budget and alert should be scoped. Used for fine-grained budget management within a subscription."
  default     = null
}
