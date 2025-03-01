variable "vpc_id" {
    description = "VPC ID from the VPC module"
    type        = string
}

variable "vpc_cidr" {
    description = "VPC CIDR from the VPC module"
    type        = string
}

variable "public_subnets" {
  description = "Public subnet"
}

variable "igw_tag" {
  description = "internet gateway tag"
  type = string
  default = "demo_igw"       #change to your value
}

variable "nat_igw_tag" {
  description = "nat gateway tag"
  type = string
  default = "demo_nat_gw"    #change to your value
}

variable "nat_eip_tag" {
  description = "nat eip tag"
  type = string
  default = "eip_nat_eip"      #change to your value
}

variable "nat_domain" {
  description = "NAT IGW domain"
  type = string
  default = "vpc"    
}

