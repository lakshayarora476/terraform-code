variable "rg_name" {
  type        = string
  description = "Resource group name"
  default     = "lakshay-rg"
}

variable "rg_location" {
  type        = string
  description = "Resource group location"
  default     = "eastus"
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
