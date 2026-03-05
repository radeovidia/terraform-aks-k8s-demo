resource "azurerm_resource_group" "aks_rg" {
  name     = "aks-demo-rg"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "demo-aks-cluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "demoaks"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}
