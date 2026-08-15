variable "resource_group" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "virtual_network" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}
variable "subnets" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}
variable "network_security_group" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
  }))
}

variable "subnet_network_association_group" {
  type = map(object({
    subnet_key = string
    nsg_key    = string
  }))
}


