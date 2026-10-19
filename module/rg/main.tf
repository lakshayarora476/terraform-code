resource "azurerm_resource_group" "neptune_spoke" {
  name     = var.rg_name
  location = var.rg_location

  tags = {
    environment         = "Sandbox"
    owner               = "Neptune"
    cost_center         = "Bank"
    data_classification = "internal"
    managed_by          = "Neptune-Squad"
  }
}

