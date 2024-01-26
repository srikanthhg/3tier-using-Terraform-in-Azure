variable "location" {
    default = "East US"
    type = string
}
variable "address_space" {
    default = ["10.0.0.0/16"]
    type = list
    
}

variable "rg_tags" {
  type = map
  default = {} # it is optional
}
variable "common_tags" {
  type = map
  default = {} # it is optional
}
variable "vnet_tags" {
  type = map
  default = {}
}
variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}
variable "public_subnet_address_prefixes" {
  type = list
  validation {
    condition = length(var.public_subnet_address_prefixes) == 2
    error_message = "Please give 2 publice valid subnet CIDR"
  }
}
variable "public_subnets_tags" {
  default = {}
}

variable "private_subnet_address_prefixes" {
  type = list
  validation {
    condition = length(var.private_subnet_address_prefixes) == 2
    error_message = "Please give 2 private valid subnet CIDR"
  }
}
variable "private_subnets_tags" {
  default = {}
}

variable "database_subnet_address_prefixes" {
  type = list
  validation {
    condition = length(var.database_subnet_address_prefixes) == 2
    error_message = "Please give 2 database valid subnet CIDR"
  }
}
variable "database_subnets_tags" {
  default = {}
}