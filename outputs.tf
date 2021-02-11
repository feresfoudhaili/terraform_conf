output "RessourceGroup" {
  value =data.azurerm_resource_group.rg
}

output "VirtualNetwork" {
  value =data.azurerm_virtual_network.vnet
}


output "Subnet" {
  value =data.azurerm_subnet.subnet
}

output "Image" {
  value =data.azurerm_image.rdshImage
}