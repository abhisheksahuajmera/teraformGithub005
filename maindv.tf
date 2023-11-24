// Executer-provider-location-{name+Version}-{Tag-{Name+Version}+{env|version}
// Az-Ind-{Rg100}-{Tag-{Rg100}+{dev|100}
provider "azurerm" {
  features {}
}
//
variable "rgasenv_name" {
  type        = string
  description = "(Optional) The prefix which should be used for all resources in this example. Defaults to burrito."
  default     = "rg"
}

variable "rgasenv_location" {
  type        = string
  description = "(Optional) The Azure Region in which all resources in this example should be created. Defaults to East US."
  default     = "eastus"
}
//
variable "env_name" {
  type        = string
  description = "(Required) The environment in which all resources in this example should be created."
  default     = "dev"
}

variable "env_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "100"
}
//
resource "azurerm_resource_group" "rg105dvtg" {
  location =  "east us"//var.rgasenv_location
  name     =  "rg105-dv"// "${var.rgasenv_name}-${var.env_name}"

  tags = {
    environment = "dev100"//var.env_name
    version     = "100"//var.env_version
  }
}