# data "azurerm_key_vault" "my_vault" {
#   name  = "${var.project_name}-${var.environment}-myvault"
#   resource_group_name = "roboshop-dev"
# }

# data "azurerm_key_vault_secret" "rg_name" {
#   name         = "${var.project_name}-${var.environment}-rg-name"
#   key_vault_id = data.azurerm_key_vault.my_vault.id
# }

# output "my_id" {
#     value = data.azurerm_key_vault_secret.rg_name.value
#     sensitive = true
# }