variable "resource_group_name" {
  default = "rg-aks-demo"
}

variable "location" {
  default = "Southeast Asia"
}

variable "cluster_name" {
  default = "aks-demo-cluster"
}

variable "node_count" {
  default = 1
}

variable "vm_size" {
  default = "Standard_B2s"
}
