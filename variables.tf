variable "rg_name" {
  type        = string
  description = "Resource group name"
  default     = "lakshay-rg"
}

variable "environment" {
  type        = string
  description = "environment type [TST/ACC/PROD]"
  default     = "tst"

}
variable "rg_location" {
  type        = string
  description = "Resource group location"
  default     = "eastus"
}

variable "sg_name" {
  type        = string
  description = "Storage account name"
  default     = "lakshaysg"
}

variable "sg_replication_type" {
  type        = string
  description = "Storage account replication"
  default     = "LRS"

}
variable "vnet_name" {
  type        = string
  description = "Virtual network name"
  default     = "lakshay-vnet"
}

variable "subnet_name" {
  type        = string
  description = "subnet name"
  default     = "lakshay-subnet"
}

variable "nsg_name" {
  type        = string
  description = "nsg name"
  default     = "lakshay-nsg"
}
