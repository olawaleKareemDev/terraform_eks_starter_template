variable "vpc_id" {
    description = "VPC ID from the VPC module"
    type        = string
}

variable "vpc_cidr" {
    description = "VPC CIDR from the VPC module"
    type        = string
}

variable "cluster_name" {
  description = "Cluster name"
  default =  "retrunCluster01"       #change to your value
  type = string
}


variable "cluster_version" {
  description = "Cluster version"
  default =  "1.31"                 #change to your value
  type = string
}


variable "public_subnets" {
  description = "Public subnet"
}


variable "private_subnets" {
  description = "Private subnet"
}


variable "node_role_name" {
  description = "EKS node role name"
  default = "retrunClusterNodeRole01"         #change to your value
  type = string
}

variable "cluster_role_name" {
  description = "EKS cluster role name"
  default = "retrunClusterRole01"            #change to your value
  type = string
}


variable "node_group_name" {
  description = "EKS node name"
  default = "retrunClusterNodeGroup01"          #change to your value
  type = string
}