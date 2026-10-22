locals {
  test = {
    "neptune" = {
      name     = var.rg_name
      location = var.rg_location
    }
    "saturn" = {
      name     = "neptune-rg"
      location = "eastus"
    }
  }
}

module "neptune_rg" {
  source      = "./module/rg"
  for_each    = local.test
  rg_name     = each.value.name
  rg_location = each.value.location
}

module "neptune_storage" {
  source              = "./module/storage"
  sg_name             = var.sg_name
  sg_location         = module.neptune_rg["neptune"].rg_location
  sg_rg               = module.neptune_rg["neptune"].rg_name
  sg_replication_type = var.sg_replication_type
}

moved {
  from = module.neptune_rg
  to   = module.neptune_rg["neptune"]
}

import {
  to = module.neptune_rg["saturn"].azurerm_resource_group.neptune_spoke
  id = "/subscriptions/ae4bb2a6-1a5d-40cf-9cf1-d9eaef60a7a1/resourceGroups/neptune-rg"
}

