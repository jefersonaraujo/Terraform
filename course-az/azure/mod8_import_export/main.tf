provider "azurerm" {
    features {}
  
}

resource "azurerm_resource_group" "rg" {
    name = "rg-terraform-import"
    location = "brazilsouth"
    tags = {
      "ambiente" = "testes"
    }
  
}

resource "azurerm_virtual_network" "vnet" {
    name = "vnet-terraform"
    resource_group_name = "rg-terraform-import"
    location = "brazilsouth"
    address_space = ["10.1.0.0/16", "192.168.0.0/16"]
    tags = {
      "ambiente" = "testes"
    }
}


resource "azurerm_network_security_group" "nsg" {
  
}