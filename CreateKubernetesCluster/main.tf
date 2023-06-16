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

resource "azurerm_subnet" "KubernetesSubnet" {
  name                 = var.azzuremission_team2_subnet_deployagent
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.KubernetesVnet.name
  address_prefixes     = ["12.0.2.0/24"]

  delegation {
    name = "Microsoft.Web.hostingEnvironments"
    service_delegation {
      name    = "Microsoft.Web/hostingEnvironments"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}

