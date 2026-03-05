# Terraform AKS Kubernetes Deployment

This repository demonstrates provisioning an Azure Kubernetes Service (AKS)
cluster using Terraform and deploying a sample NGINX application using
Kubernetes manifests.

## Tech Stack

- Terraform
- Azure Kubernetes Service (AKS)
- Kubernetes

## Infrastructure

Terraform will provision:

- Azure Resource Group
- AKS Cluster
- Default Node Pool

## Usage

### Initialize Terraform

terraform init

### Plan Infrastructure

terraform plan

### Apply Infrastructure

terraform apply

### Deploy Application

kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
