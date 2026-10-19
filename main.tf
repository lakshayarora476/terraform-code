module "neptune_rg" {
  source      = "./module/rg"
  rg_name     = var.rg_name
  rg_location = var.rg_location
}

module "vnet" {
  source        = "./module/vnet"
  vnet_name     = var.vnet_name
  vnet_location = module.neptune_rg.rg_location
  vnet_rg       = module.neptune_rg.rg_name
}

module "subnet" {
  source    = "./module/subnet"
  subnet    = var.subnet_name
  vnet_name = module.vnet.vnet_name
  subnet_rg = module.vnet.vnet_rg

}

module "nsg" {
  source       = "./module/nsg"
  nsg_name     = var.nsg_name
  nsg_location = module.vnet.vnet_location
  nsg_rg       = module.vnet.vnet_rg
  subnet_id    = module.subnet.subnet_id

}

