resource "azurerm_network_security_group" "neptune_nsg" {
  name                = var.nsg_name
  location            = var.nsg_location
  resource_group_name = var.nsg_rg

  security_rule {
    name                       = "neptune-nsg-rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    nsg = "test-env-nsg"

  }

}

resource "azurerm_subnet_network_security_group_association" "nsg-subnet" {
  subnet_id                 = var.subnet_id
  network_security_group_id = azurerm_network_security_group.neptune_nsg.id
}