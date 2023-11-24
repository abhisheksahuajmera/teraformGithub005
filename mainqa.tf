// Executer-provider-location-{name+Version}-{Tag-{Name+Version}+{env|version}
// Az-Ind-{Rg100}-{Tag-{Rg100}+{qa|100}
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
/*
variable "env_name" {
  type        = string
  description = "(Required) The environment in which all resources in this example should be created."
  default     = "qa"
}

variable "env_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "100"
}
*/
//
resource "azurerm_resource_group" "rg105qatg" {
  location = var.rgasenv_location
  name     = "${var.rgasenv_name}-${var.env_name}"

  tags = {
    environment = var.env_name
    version     = var.env_version
  }
}
resource "azurerm_resource_group" "rg105dvtg" {
  location =  "east us"//var.rgasenv_location
  name     =  "rg105-qa"// "${var.rgasenv_name}-${var.env_name}"

  tags = {
    environment = "qa"//var.env_name
    version     = "100"//var.env_version
  }
}