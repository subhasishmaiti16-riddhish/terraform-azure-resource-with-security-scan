terraform {
  required_version = "~> 1.17.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg_provider"
    storage_account_name = "datablockstorage2"
    container_name       = "datablockcont"
    key                  = "terraform.datablockcont"
  }
}

provider "azurerm" {
  features {}
}
