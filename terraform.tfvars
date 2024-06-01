Jay-project-Repo-rg-module = {
  RG01 = {
    rg_name  = "Jay-project-Repo-rg-dev0"
    location = "centralindia"
  }

  RG02 = {
    rg_name  = "Jay-project-Repo-rg-dev"
    location = "eastasia"
  }
}
Jay-project-Repo-vnet-module = {
  vnet01 = {
    vnet_name = "Jay-project-Repo-vnet-dev"
    rg_name   = "Jay-project-Repo-rg-dev0"
    location  = "centralindia"
    address_space = ["10.0.0.0/16"]
  }
  vnet1 = {
    vnet_name     = "Jay-project-Repo-vnet1-dev"
    rg_name       = "Jay-project-Repo-rg-dev"
    location      = "eastasia"
    address_space = ["10.0.0.0/16"]
  }
  vnet02 = {
    vnet_name     = "Jay-project-Repo-vnet01-dev"
    rg_name       = "Jay-project-Repo-rg-dev"
    location      = "eastasia"
    address_space = ["10.1.0.0/16"]
  }
  
}
Jay-project-Repo-subnet-module = {
  subnet1 = {
    subnet_name      = "Jay-project-Repo-subnet-dev"
    vnet_name        = "Jay-project-Repo-vnet1-dev"
    rg_name          = "Jay-project-Repo-rg-dev"
    location         = "eastasia"
    address_prefixes = ["10.0.0.0/24"]
  }
  subnet02 = {
    subnet_name      = "Jay-project-Repo-subnet-dev1"
    vnet_name        = "Jay-project-Repo-vnet01-dev"
    rg_name          = "Jay-project-Repo-rg-dev"
    location         = "eastasia"
    address_prefixes = ["10.1.0.0/24"]
  }
  subnet = {
    subnet_name      = "AzureBastionSubnet"
    vnet_name        = "Jay-project-Repo-vnet1-dev"
    rg_name          = "Jay-project-Repo-rg-dev"
    location         = "eastasia"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet03 = {
    subnet_name      = "Jay-project-Repo-subnet-dev02"
    vnet_name        = "Jay-project-Repo-vnet-dev"
    rg_name          = "Jay-project-Repo-rg-dev0"
    location         = "centralindia"
    address_prefixes = ["10.0.0.0/24"]
  }
}

Jay-project-Repo-nic-module = {
  nic01 = {
    nic_name    = "Jay-project-Repo-nic"
    subnet_name = "Jay-project-Repo-subnet-dev"
    vnet_name   = "Jay-project-Repo-vnet1-dev"
    rg_name     = "Jay-project-Repo-rg-dev"
     location  = "eastasia"
  }
  nic02 = {
    nic_name    = "Jay-project-Repo-nic01"
    subnet_name = "Jay-project-Repo-subnet-dev1"
    vnet_name   = "Jay-project-Repo-vnet01-dev"
    rg_name     = "Jay-project-Repo-rg-dev"
    location  = "eastasia"
  }
  nic03 = {
    nic_name    = "Jay-project-Repo-nic"
    subnet_name = "Jay-project-Repo-subnet-dev02"
    vnet_name   = "Jay-project-Repo-vnet-dev"
    rg_name     = "Jay-project-Repo-rg-dev0"
    location = "centralindia"
  }
}

Jay-project-Repo-publicip-module = {
  public01 = {
    publicip_name = "Jay-project-Repo-publicip0"
    rg_name       = "Jay-project-Repo-rg-dev"
    location      = "eastasia"
  }
  public = {
    publicip_name = "Jay-project-Repo-publicip"
    rg_name       = "Jay-project-Repo-rg-dev"
    location      = "eastasia"
  }
  public02 = {
    publicip_name = "Jay-project-Repo-publicip01"
    rg_name       = "Jay-project-Repo-rg-dev0"
    location      = "eastasia"
  }
  public03 = {
    publicip_name = "Jay-project-Repo-publicip1"
    rg_name       = "Jay-project-Repo-rg-dev0"
    location      = "centralindia"
  }
}
Jay-project-Repo-keyvault-module = {
  key01 = {
    key_vault_name = "Jay-keyvault01"
    rg_name        = "Jay-project-Repo-rg-dev0"
    location       = "centralindia"
  }
  key01 = {
    key_vault_name = "Jay-keyvault"
    rg_name        = "Jay-project-Repo-rg-dev"
    location       = "eastasia"
  }
}

Jay-project-Repo-bastion-module = {
  bastion01 = {
    bastion_name  = "Jay-project-Repo-bastion"
    rg_name       = "Jay-project-Repo-rg-dev"
    location      = "eastasia"
    subnet_name   = "AzureBastionSubnet"
    publicip_name = "Jay-project-Repo-publicip"
    vnet_name = "Jay-project-Repo-vnet1-dev"
  }
}

Jay-project-Repo-vnetpeering-module = {
  vnetpeering = {
    vnetpeering_name  = "Jay-project-Repo-vnet1-devtoJay-project-Repo-vnet01-dev"
    vnetpeering_name1 = "Jay-project-Repo-vnet01-devtoJay-project-Repo-vnet1-dev"
    vnet_name         = "Jay-project-Repo-vnet1-dev"
    vnet_name1        = "Jay-project-Repo-vnet01-dev"
    rg_name           = "Jay-project-Repo-rg-dev"
  }
}


