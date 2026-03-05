
# Terraform AKS Kubernetes Demo

This project demonstrates how to provision an Azure Kubernetes Service (AKS) cluster using Terraform and deploy Kubernetes resources using the Kubernetes and Helm providers. This is task from Mas Didik, thanks for give me a chance to learning terraform.

## Specs that needed
Standard_D2s_v3 (2 vCPU, 8 GB RAM), it used because of trial AKS

## Architecture

Terraform will create:

- Azure Resource Group
- Azure Kubernetes Service (AKS)
- NGINX Ingress Controller using Helm
- Kubernetes Namespace
- Dummy Application Deployment

## Project Structure

terraform-aks-k8s-demo
│
├── terraform
│   ├── aks
│   │   ├── main.tf
│   │   ├── providers.tf
│   │   └── variables.tf
│   │
│   └── k8s
│       ├── main.tf
│       └── providers.tf
│
├── kubernetes
│   ├── namespace.yaml
│   └── deployment.yaml
│
└── README.md

How to Run It :
1. Should Install !!!
    - Terraform
    - Azure CLI
    - kubectl
    - Helm

2. Login to Azure
   - az Login
   - az account set --subscription "<SUBSCRIPTION_ID>"

3. cd terraform/aks then do init, plan and apply and please do get credential from it (az aks get-credentials --resource-group <RESOURCE_GROUP --name <AKS_CLUSTER_NAME> ) then get nodes

4. cd terraform/k8s terraform init (if there's an issue because of version lock, please do -upgrade) then do plan and apply
   the result will be showing namespace, pods, and svc.

5. if all steps done, please do destroy (if needed), should do destroy k8s first then destroy aks. (just following when the last apply will be first destroy)




   