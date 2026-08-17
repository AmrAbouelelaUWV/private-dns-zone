resource "azurerm_private_dns_zone" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = local.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  name                 = var.vnet_link_name
  private_dns_zone_id  = azurerm_private_dns_zone.this.id
  virtual_network_id   = var.virtual_network_id
  registration_enabled = var.registration_enabled
  tags                 = local.tags
}
