resource "azurerm_virtual_network" "neptune_vnet" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.vnet_rg

  address_space = ["10.0.0.0/16"]

  tags = {
    managed_by  = "Squad_neptune"
    environment = "Testing"
  }

}