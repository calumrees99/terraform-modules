module "budget" {
  source       = "../../modules/goverance/consumption"
  timeGrain    = var.timeGrain
  budgetName   = var.budgetName
  notification = var.notification
}
