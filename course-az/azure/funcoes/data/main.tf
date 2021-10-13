provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "grupo-recurso" {
  location = "brazilsouth"
  name     = "rg-terraform"
  tags = {
    data        = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
    ambiente    = lower("Homologacao")
    responsavel = upper("Jeferson")
    tecnologia  = title("terraform")

  }

}

variable "vnetips" {
  type    = list
  default = ["10.0.0.0/16"]

}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnettreinamento"
  location            = "brazilsouth"
  resource_group_name = "rg-terraform"
  address_space       = length(var.vnetips) == 0 ? ["10.0.0.0/16", "192.168.0.0/16"] : var.vnetips
  //address_space       = concat(var.vnetips, ["192.168.0.0/16"])

}

output "vnet-numeroips" {
  value = length("${azurerm_virtual_network.vnet.address_space}")
        
}