provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "grupo-recurso" {
  name     = var.name-rg
  location = var.location
  tags     = var.tags

}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-terraform"
  resource_group_name = azurerm_resource_group.grupo-recurso.name
  location            = var.location
  address_space       = var.vnetenderecos


}