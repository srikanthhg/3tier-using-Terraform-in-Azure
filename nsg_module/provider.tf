terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.88.0"
    }
  }

#     backend "azurerm" {
#     resource_group_name  = "StorageAccount-ResourceGroup"
#     storage_account_name = "abcd1234"
#     container_name       = "tfstate"
#     key                  = "prod.terraform.tfstate"
#     # use_msi              = true
#     subscription_id      = "2cab150b-4433-4b0e-95a8-fabb980b3485"
#     tenant_id            = "51abec8d-04c7-4d2b-8c58-b08ddefed419"
#     lock_table           = "terraformlock"
#   }
}  


provider "azurerm" {
    features {}
  # Configuration options
}