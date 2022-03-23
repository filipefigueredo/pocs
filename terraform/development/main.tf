resource "azurerm_resource_group" "rg" {
  name     = "rg-poc-development"
  location = "West Europe"
  tags     = var.tags
}

locals {
  test1 = "This is my output 01"
  test2 = "This is my output 02"
}

output "first_output" {
  value = local.test1
}

output "second_output" {
  value = local.test2
}

