# 1. Resource Group
resource "azurerm_resource_group" "main" {
  name     = "rg-terraform-cicd-demo"
  location = "East US 2"
  
  tags = {
    project     = "terraform-cicd"
    environment = "dev"
    managed-by  = "terraform"
  }
}

# 2. Storage Account
resource "azurerm_storage_account" "main" {
  name                     = "saikirantfcicddemo"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  tags = {
    project     = "terraform-cicd"
    environment = "dev"
  }
}

# 3. Storage Container
resource "azurerm_storage_container" "main" {
  name                  = "democontainer"
  storage_account_id    = azurerm_storage_account.main.id
  container_access_type = "private"
}