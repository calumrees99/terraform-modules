resource "azurerm_consumption_budget_management_group" "management_group" {
  count               = var.managementGroupId != null ? 1 : 0
  name                = var.budgetName
  management_group_id = var.managementGroupId

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
resource "azurerm_consumption_budget_subscription" "subscription" {
  count           = var.subscriptionId != null ? 1 : 0
  name            = var.budgetName
  subscription_id = var.subscriptionId

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
resource "azurerm_consumption_budget_resource_group" "resource_group" {
  count             = var.resourceGroupId != null ? 1 : 0
  name              = var.budgetName
  resource_group_id = var.resourceGroupId

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
