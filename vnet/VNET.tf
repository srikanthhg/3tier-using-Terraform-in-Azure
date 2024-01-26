resource "azurerm_resource_group" "MY_RG" {
  name     = local.name
  location = var.location
  tags = merge(
    var.rg_tags,
    var.common_tags,
    {
    Name = local.name
    }
  )
}

resource "azurerm_virtual_network" "main" {
  address_space       = var.address_space
  name                = local.name
  location            = azurerm_resource_group.MY_RG.location
  resource_group_name = azurerm_resource_group.MY_RG.name
  tags = merge(
    var.vnet_tags,
    var.common_tags,
    {
    Name = local.name
    }
  )
}

resource "azurerm_subnet" "public_subnet" {
  count = length(var.public_subnet_address_prefixes)
  name                 = "${local.name}-public-${count.index+1}"
  resource_group_name  = azurerm_resource_group.MY_RG.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.public_subnet_address_prefixes[count.index]]
  
}

resource "azurerm_subnet" "private_subnet" {
  count = length(var.private_subnet_address_prefixes)
  name                 = "${local.name}-private${count.index+1}"
  resource_group_name  = azurerm_resource_group.MY_RG.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.private_subnet_address_prefixes[count.index]]
  
}

resource "azurerm_subnet" "database_subnet" {
  count = length(var.database_subnet_address_prefixes)
  name                 = "${local.name}-database${count.index+1}"
  resource_group_name  = azurerm_resource_group.MY_RG.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.database_subnet_address_prefixes[count.index]]
  
}

# resource "azurerm_key_vault" "my_vault" {
#   name                       = "${var.project_name}-${var.environment}-myvault"
#   location            = azurerm_resource_group.MY_RG.location
#   resource_group_name = azurerm_resource_group.MY_RG.name
#   sku_name                   = "standard"
#   tenant_id                  = data.azurerm_client_config.current.tenant_id
#   soft_delete_retention_days = 7

#   access_policy {
#     tenant_id = data.azurerm_client_config.current.tenant_id
#     object_id = data.azurerm_client_config.current.object_id

#     key_permissions = [
#       "Create",
#       "Get",
#     ]

#     secret_permissions = [
#       "Set",
#       "Get",
#       "List",
#       "Delete",
#       "Purge",
#       "Recover"
#     ]
#   }

# }
# az feature register --namespace Microsoft.Network --name AllowMultipleAddressPrefixesOnSubnet

# az feature show --namespace Microsoft.Network --name AllowMultipleAddressPrefixesOnSubnet --query registrationState