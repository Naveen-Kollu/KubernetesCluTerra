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

resource "azurerm_kubernetes_cluster" "Team2KubCluName" {
  name                = "Team2KubCluName"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "my-aks-cluster"

  default_node_pool {
    name                  = "default"
    vm_size               = "Standard_DS2_v2"
    enable_auto_scaling   = true
    min_count             = 2
    max_count             = 5
    enable_node_public_ip = false
    os_disk_size_gb       = 30
    

  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "kubenet"
    network_policy    = "calico"
    load_balancer_sku = "standard"
  }

  tags = {
    Environment = "Dev/Test"
  }

  sku_tier           = "Free"
  kubernetes_version = "1.26.0"
}