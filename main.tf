terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "171a1e4f-d2a6-4beb-87ab-b0b221a84d1f"
}
##
terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "jenkinsstatestevo22"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG4"
  location = "westeurope"
}
