
terraform {
  required_version = ">=0.12"
}

data "azurerm_resource_group" "rg" {
  name     = "RDS-FARM-GROUP"

}

data "azurerm_virtual_network" "vnet" {
  name = "RDS-FARM-GROUP-vnet"
  resource_group_name=data.azurerm_resource_group.rg.name
}

data "azurerm_subnet" "subnet" {
  name = "default"
  virtual_network_name=data.azurerm_virtual_network.vnet.name
  resource_group_name=data.azurerm_resource_group.rg.name
}
 

data "azurerm_image" "rdshImage" {
  name                = "SessionHost-image"
  resource_group_name = data.azurerm_resource_group.rg.name
}
