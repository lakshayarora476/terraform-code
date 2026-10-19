variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "rg_location" {
  description = "Resource group location"
  type        = string

  validation {
    condition     = contains(["eastus"], var.rg_location)
    error_message = "The location must be eastus"
  }
}

