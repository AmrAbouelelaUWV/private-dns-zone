variable "name" {
  description = "Naam van de private DNS zone, bv. privatelink.blob.core.windows.net"
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "virtual_network_id" {
  description = "ID van het vnet dat gelinkt wordt aan deze DNS zone"
  type        = string
}

variable "vnet_link_name" {
  type    = string
  default = "vnet-link"
}