module "neptune_rg" {
  source      = "./module/rg"
  rg_name     = "lakshay-rg"
  rg_location = "eastus"
}

module "vnet" {
  source        = "./module/vnet"
  vnet_name     = "lakshay-vnet"
  vnet_location = module.neptune_rg.rg_location
  vnet_rg       = module.neptune_rg.rg_name
}

module "subnet" {
  source    = "./module/subnet"
  subnet    = "lakshay-nsg"
  vnet_name = module.vnet.vnet_name
  subnet_rg = module.vnet.vnet_rg

}

module "nsg" {
  source       = "./module/nsg"
  nsg_name     = "lakshay-nsg"
  nsg_location = module.vnet.vnet_location
  nsg_rg       = module.vnet.vnet_rg
  subnet_id    = module.subnet.subnet_id

}

