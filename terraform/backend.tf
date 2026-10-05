terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.8.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Uday-rg"
    storage_account_name = "statesauday"
    container_name       = "state-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
