data "azurerm_subscription" "current" {}

resource "azurerm_consumption_budget_subscription" "subscription" {
  name            = var.budgetName
  subscription_id = data.azurerm_subscription.current.id

  amount     = var.budgetAmount
  time_grain = var.timeGrain

  time_period {
    start_date = var.start_date
  }

  dynamic "notification" {
    for_each = var.notification != null ? [var.notification] : []

    content {
      enabled        = var.notification.enabled
      threshold      = var.notification.threshold
      operator       = var.notification.operator
      threshold_type = var.notification.threshold_type

      contact_emails = var.notification.contact_emails
    }
  }
}
