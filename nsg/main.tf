resource "azurerm_network_security_group" "allow_tls" {
  name                = "${var.project_name}-${var.environment}-${var.nsg_name}"
  location            = var.location
  resource_group_name = var.rg_name
   
}

