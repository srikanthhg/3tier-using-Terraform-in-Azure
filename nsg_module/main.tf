module "mongodb" {
    source = "../nsg"
    nsg_name = "mongodb"
    project_name = var.project_name
    environment = var.environment
    location = var.location
    rg_name = var.rg_name
 
}
module "redis" {
    source = "../nsg"
    nsg_name = "redis"
    project_name = var.project_name
    environment = var.environment
    location = var.location
    rg_name = var.rg_name
 
}

module "mysql" {
    source = "../nsg"
    nsg_name = "mysql"
    project_name = var.project_name
    environment = var.environment
    location = var.location
    rg_name = var.rg_name
 
}
module "rabbitmq" {
    source = "../nsg"
    nsg_name = "rabbitmq"
    project_name = var.project_name
    environment = var.environment
    location = var.location
    rg_name = var.rg_name
 
}

resource "azurerm_network_security_rule" "my_rules" {
  name                        = "test123"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.rg_name
  network_security_group_name = module.mongodb.nsg_name
}
