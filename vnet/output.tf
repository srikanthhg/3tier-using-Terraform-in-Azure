output "account_id" {
  value = data.azurerm_client_config.current.client_id
}

output "key_vault_id" {
  value = azurerm_key_vault.my_vault.id
}

output "rg_name" {
  value = azurerm_resource_group.MY_RG.name
}
