resource_group = {
  rg1 = {
    name     = "raman-resource-group"
    location = "westus"
  }
}

virtual_network = {
  vnet = {
    name                = "dev-vnet"
    resource_group_name = "raman-resource-group"
    location            = "westus"
    address_space       = ["10.143.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "raman-resource-group"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.143.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "raman-resource-group"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.143.2.0/24"]
  }
}

network_security_group = {
  nsg1 = {
    name                = "dev-nsg"
    resource_group_name = "raman-resource-group"
    location            = "westus"
  }
}

subnet_network_association_group = {
  sa1 = {
    subnet_key = "subnet1"
    nsg_key    = "nsg1"
  }

  sa2 = {
    subnet_key = "subnet2"
    nsg_key    = "nsg1"
  }
}
