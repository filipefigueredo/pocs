module "resource_group" {
  source      = "git::github.com/Nmbrs/tf-modules/azure/resource-group"
  name        = "rg-${var.product}-${var.environment}"
  location    = var.location
  environment = var.environment
  product     = var.product
  country     = var.country
  squad       = var.squad
  extra_tags  = {}
}