module "Jay-project-Repo-module-rg" {
  source              = "../../module/Azurerm_resource_group"
  Jay-project-Repo-rg = var.Jay-project-Repo-rg-module
}

module "Jay-project-Repo-module-vnet" {
  depends_on            = [module.Jay-project-Repo-module-rg]
  source                = "../../module/Azurerm_virtual_network"
  Jay-project-Repo-vnet = var.Jay-project-Repo-vnet-module
}

module "Jay-project-Repo-module-subnet" {
  depends_on              = [module.Jay-project-Repo-module-rg, module.Jay-project-Repo-module-vnet]
  source                  = "../../module/Azurerm_subnet"
  Jay-project-Repo-subnet = var.Jay-project-Repo-subnet-module
}

module "Jay-project-Repo-nic-module" {
  source               = "../../module/Azurerm_network_interface"
  depends_on           = [module.Jay-project-Repo-module-rg, module.Jay-project-Repo-module-subnet]
  Jay-project-Repo-nic = var.Jay-project-Repo-nic-module
}
module "Jay-project-Repo-public-ip-module" {
  depends_on                 = [module.Jay-project-Repo-module-rg]
  source                     = "../../module/Azurerm_public_IP"
  Jay-project-Repo-public-ip = var.Jay-project-Repo-publicip-module

}

module "Jay-project-Repo-keyvault-module" {
  depends_on                = [module.Jay-project-Repo-module-rg, ]
  source                    = "../../module/Azurerm_key_vault"
  Jay-project-Repo-keyvault = var.Jay-project-Repo-keyvault-module

}

module "Jay-project-Repo-bastion-module" {
  depends_on               = [module.Jay-project-Repo-module-rg, module.Jay-project-Repo-module-vnet,module.Jay-project-Repo-module-subnet]
  source                   = "../../module/Azurerm_bastion_host1"
  Jay-project-Repo-bastion = var.Jay-project-Repo-bastion-module

}

module "Jay-project-Repo-vnetpeering-module" {
  depends_on                   = [module.Jay-project-Repo-module-rg, module.Jay-project-Repo-module-vnet]
  source                       = "../../module/Azurerm_Virtual_Network_Peering"
  Jay-project-Repo-vnetpeering = var.Jay-project-Repo-vnetpeering-module
}