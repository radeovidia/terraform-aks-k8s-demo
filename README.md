# AKS Terraform Demo

This repository contains Terraform configuration to provision an Azure Kubernetes Service (AKS) cluster and Kubernetes manifests for a sample application deployment.

## Components

Terraform
- Azure Resource Group
- Azure Kubernetes Service (AKS)

Kubernetes
- Namespace
- Deployment
- Service
- Ingress

## Terraform Usage

Initialize Terraform

terraform init

Plan deployment

terraform plan

Apply infrastructure

terraform apply

## Kubernetes Deployment

Apply namespace

kubectl apply -f kubernetes/namespace.yaml

Apply application

kubectl apply -f kubernetes/deployment.yaml
