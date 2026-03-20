<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_consumption_budget_management_group.management_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_management_group) | resource |
| [azurerm_consumption_budget_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_resource_group) | resource |
| [azurerm_consumption_budget_subscription.subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget_amount"></a> [budget\_amount](#input\_budget\_amount) | Required. The total monetary amount allocated for this budget. Costs tracked against this amount will trigger notifications based on defined thresholds. | `number` | n/a | yes |
| <a name="input_budget_name"></a> [budget\_name](#input\_budget\_name) | Required. The display name of the budget. This name will be used to identify the budget within Azure Cost Management. | `string` | n/a | yes |
| <a name="input_management_group_id"></a> [management\_group\_id](#input\_management\_group\_id) | Optional. The Management Group ID where this budget and alert should be applied. Used for organization-wide budget tracking. | `string` | `null` | no |
| <a name="input_notification"></a> [notification](#input\_notification) | Required. Configuration for budget notifications.<br/>- `enabled`: Whether the notification is active.<br/>- `threshold`: The percentage of the budget amount that triggers the alert.<br/>- `operator`: The comparison operator used to evaluate the threshold (e.g., 'GreaterThan').<br/>- `threshold_type`: The basis for the threshold (e.g., 'Actual' or 'Forecasted').<br/>- `contact_emails`: A list of email addresses to receive the notification. | <pre>object({<br/>    enabled        = bool<br/>    threshold      = number<br/>    operator       = string<br/>    threshold_type = string<br/>    contact_emails = list(string)<br/>  })</pre> | n/a | yes |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | Optional. The Resource Group ID where the budget and alert should be scoped. Used for fine-grained budget management within a subscription. | `string` | `null` | no |
| <a name="input_start_date"></a> [start\_date](#input\_start\_date) | Required. The start date for the budget period in ISO 8601 format (YYYY-MM-DDThh:mm:ssZ). Must be the first day of a month and occur before the end date. | `string` | `"2025-10-01T00:00:00Z"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Optional. The Subscription ID where the budget and alert should be applied. Used for subscription-level cost tracking. | `string` | `null` | no |
| <a name="input_time_grain"></a> [time\_grain](#input\_time\_grain) | Required. The time interval for budget tracking and reset (e.g., 'Monthly', 'Quarterly', or 'Annually'). Determines how often the budget cycle restarts. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->