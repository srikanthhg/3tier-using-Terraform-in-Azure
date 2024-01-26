module "vnet" {
    source = "../vnet"
    project_name = var.project_name
    environment = var.environment
    address_space = var.address_space
    vnet_tags = var.vnet_tags
    # public subnet
  public_subnet_address_prefixes = var.public_subnet_address_prefixes

  # private subnet
  private_subnet_address_prefixes = var.private_subnet_address_prefixes

  # database subnet
  database_subnet_address_prefixes = var.database_subnet_address_prefixes
}