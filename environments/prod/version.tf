terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>5.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "raman-resource-group"
    storage_account_name = "ramanstorageaccount123"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
