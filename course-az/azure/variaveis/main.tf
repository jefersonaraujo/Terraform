provider "azurerm" {
  features {
  }
}
variable "location" {
  type        = string
  description = "Localização dos recursos do azure"
  default     = "brazilsouth"

}
resource "azurerm_resource_group" "grupo-recurso" {
  name     = "rgterraform"
  location = var.location

}