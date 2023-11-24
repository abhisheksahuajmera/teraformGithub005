terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  cloud {
    organization = "tforg100"
    workspaces {
        name = "gittrig_execrm-ws100-dv"
    }
  }

  backend "azurerm" {
    # Details configured by GitHub Actions
    use_azuread_auth = true
    use_oidc         = true
    key              = "dv.tfstate"
  }
}