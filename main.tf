resource "azurerm_resource_group" "terrformrg" {
  name     = "resourceGroupName"
  location = "eastus"
}

resource "azurerm_storage_account" "testsa" {
  name                     = "storageaccountname"
  resource_group_name      = "${azurerm_resource_group.terrformrg.name}"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}