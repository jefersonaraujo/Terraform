terraform {
  backend "azurerm" {
    resource_group_name  = "terraformstate"
    storage_account_name = "terraformstatelab"
    container_name       = "terraformstate"
    key                  = ""

  }
}

provider "azurerm" {
  features {}
}

variable "location" {
  type    = string
  default = "brazilsouth"

}

resource "azurerm_resource_group" "rg" {
  name     = "appservice-${terraform.workspace}"
  location = var.location

}

resource "azurerm_app_service_plan" "plan" {
  name                = "appserviceplan-${terraform.workspace}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }

}

resource "azurerm_app_service" "appservice" {
  name                = "tfappservice-${terraform.workspace}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  site_config {
    dotnet_framework_version = "v4.0"
  }

  app_settings = {
    "chave" = "123456"
  }
}
