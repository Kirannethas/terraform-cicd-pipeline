terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.110"
    }
}

  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "saikiranterraformcicd"
    container_name       = "terraformcontainer"
    key                  = "terraform-cicd.tfstate"
  }
}




provider "azurerm" {
  features {}
}