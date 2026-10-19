variable "nsg_name" {
  type        = string
  description = "NSG name"

}

variable "nsg_location" {
  type        = string
  description = "NSG location"

}

variable "nsg_rg" {
  type        = string
  description = "NSG resource group"

}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for NSG association"

}