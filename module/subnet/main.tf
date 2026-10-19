resource "azurerm_subnet" "neptune_subnet" {
  name                 = var.subnet
  resource_group_name  = var.subnet_rg
  virtual_network_name = var.vnet_name
  address_prefixes     = ["10.0.1.0/24"]

}