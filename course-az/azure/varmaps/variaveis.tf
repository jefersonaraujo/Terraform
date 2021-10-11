variable "name-rg" {
  type        = string
  description = "Nome do Recurso"
  default     = "rgterraform"

}

variable "location" {
  type        = string
  description = "Localização dos recursos do azure"
  default     = "brazilsouth"

}

variable "tags" {
  type        = map(any)
  description = "Tags nos Recursos e Servicos do azure"
  default = {
    ambiente    = "desenvolvimento"
    responsavel = "Jeferson"
  }

}

variable "vnetenderecos" {
  type    = list(any)
  default = ["10.0.0.0/16", "192.168.0.0/16"]

}
