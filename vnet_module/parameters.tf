# resource "azurerm_key_vault_secret" "rg_name" {
#   name = "${var.project_name}-${var.environment}-rg-name"
#   value = module.vnet.rg_name
#   key_vault_id = module.vnet.key_vault_id
# }