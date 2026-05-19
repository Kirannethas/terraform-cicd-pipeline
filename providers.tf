terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.73.0"
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