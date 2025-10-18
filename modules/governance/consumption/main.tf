resource "azurerm_consumption_budget_management_group" "management_group" {
  count               = var.management_group_id != null ? 1 : 0
  name                = var.budget_name
  management_group_id = var.management_group_id

  amount     = var.budget_amount
  time_grain = var.time_grain

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
resource "azurerm_consumption_budget_subscription" "subscription" {
  count           = var.subscription_id != null ? 1 : 0
  name            = var.budget_name
  subscription_id = var.subscription_id

  amount     = var.budget_amount
  time_grain = var.time_grain

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
resource "azurerm_consumption_budget_resource_group" "resource_group" {
  count             = var.resource_group_id != null ? 1 : 0
  name              = var.budget_name
  resource_group_id = var.resource_group_id

  amount     = var.budget_amount
  time_grain = var.time_grain

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
