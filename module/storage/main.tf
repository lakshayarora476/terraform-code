resource "azurerm_storage_account" "neptune_storage" {
  name                     = var.sg_name
  location                 = var.sg_location
  resource_group_name      = var.sg_rg
  account_tier             = "Standard"
  account_replication_type = var.sg_replication_type

  tags = {
    storage_account = "testing storage"
  }
}

resource "azurerm_storage_container" "neptune_blob_container" {
  name = "lakshay-blob"
  storage_account_name = azurerm_storage_account.neptune_storage.name
  container_access_type = "private"
}