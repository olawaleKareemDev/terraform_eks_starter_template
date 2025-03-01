# EKS Cluster Setup with Terraform Modules and Remote Backend

This repository provides a quick setup to spin up the EKS cluster with the associated networking infrastructure in a scalable way using Terraform. 

## Prerequisites

- **AWS CLI:** Install and configure by following the official AWS documentation: [AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- **Terraform:** Install and configure Terraform by following the HashiCorp documentation: [Terraform Installation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Purpose
Setting up an EKS cluster using Terraform modules for scalable and automated infrastructure. This approach ensures consistent, repeatable deployments with infrastructure-as-code principles and simplifies the management of AWS cloud resources.

## Why EKS?
Amazon Elastic Kubernetes Service (EKS) is a managed Kubernetes service by AWS, offering a highly available and scalable control plane. It simplifies cluster operations by handling upgrades, patching, and high availability out of the box, integrating seamlessly with AWS services like VPC, IAM, and CloudWatch.

## Why Terraform Modules?
Terraform modules provide a reusable, modular approach to infrastructure-as-code, reducing duplication and increasing consistency across environments. They enable the creation of infrastructure components, such as networking, security, and compute resources, with well-structured and scalable code.

## Architecture Overview
- **EKS Control Plane:** Managed by AWS
- **Worker Nodes:** EC2 instances or Fargate
- **Networking:** VPC, subnets, security groups
- **IAM Roles and Policies:** Permissions for EKS and nodes

## Terraform Module Structure
- **VPC Module:** Provisions virtual private clouds
- **GateWays Module:** Provisions networking gateways 
- **Route Table  Module:** Provisions route table
- **Subnet  Module:** Provisions Subnets
- **EKS Module:** Deploys the EKS control plane
- **Node Group Module:** Manages EC2 instances for the cluster


## Deploying the Infrastructure
### 1. Initialize Terraform
```bash
terraform init
```
### 2. Plan and Apply
```bash
terraform plan
terraform apply
```

## Configuring `kubectl` Access
```bash
aws eks update-kubeconfig --region us-east-1 --name my-eks-cluster
```

## Verifying the Cluster
```bash
kubectl get nodes
kubectl get pods --all-namespaces
```

## Cleaning Up (Optional)
```bash
terraform destroy
```


