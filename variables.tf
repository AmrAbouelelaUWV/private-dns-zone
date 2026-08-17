variable "name" {
  description = "Private DNS zone name, e.g. privatelink.blob.core.windows.net."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where the private DNS zone is created."
  type        = string
}

variable "virtual_network_id" {
  description = "Virtual network ID linked to the DNS zone."
  type        = string
}

variable "vnet_link_name" {
  description = "Name of the virtual network link."
  type        = string
  default     = "vnet-link"
}

variable "registration_enabled" {
  description = "Whether auto-registration is enabled for the virtual network link."
  type        = bool
  default     = false
}

variable "biv" {
  description = "Security classification tag, beschikbaarheid-integriteit-vertrouwelijkheid, 1=high 2=medium 3=low."
  type        = string

  validation {
    condition     = can(regex("^[1-3]{3}$", var.biv))
    error_message = "BIV must be three digits between 1 and 3, for example 122."
  }
}

variable "tags" {
  description = "Additional tags. The module-owned biv tag takes precedence."
  type        = map(string)
  default     = {}
}