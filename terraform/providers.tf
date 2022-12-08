provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-containerapp-rg"
    storage_account_name = "cloudcontainersa"
    container_name       = "tfstate"
    key                  = "terraform-base.tfstate"
  }
}

data "azurerm_client_config" "current" {}