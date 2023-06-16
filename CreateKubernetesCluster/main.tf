provider "azurerm" {
  features {}
  skip_provider_registration = true

}

resource "azurerm_virtual_network" "KubernetesVnet" {
  name                = var.azzuremission_team2_vnet
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["12.0.0.0/16"]
}
