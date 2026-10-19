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