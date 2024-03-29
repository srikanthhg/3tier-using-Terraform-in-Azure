variable "address_space" {
  default = ["10.0.0.0/16"]
}
variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Terraform = "true"
  }
}
variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}
variable "vnet_tags" {
  default = {}
}

variable "public_subnet_address_prefixes" {
default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_address_prefixes" {
default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_address_prefixes" {
default = ["10.0.21.0/24", "10.0.22.0/24"]
}
