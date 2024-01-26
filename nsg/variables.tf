variable "location" {
 
}
variable "rg_name" {
}
variable "rg_tags" {
  type = map
  default = {} # it is optional
}
variable "common_tags" {
  type = map
  default = {} # it is optional
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}
variable "nsg_name" {
  type = string
}
variable "nsg_tags" {
  type = map
  default = {}
}
