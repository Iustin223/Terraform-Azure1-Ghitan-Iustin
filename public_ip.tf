resource "azurerm_public_ip" "pip" {
  count               = var.vm_count
  name                = "acceptanceTestPublicIp${count.index}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
}
