resource "azurerm_resource_group" "rg" {
  name     = "rg-poc-development"
  location = "West Europe"
  tags     = var.tags
}
