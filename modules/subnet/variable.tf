
variable "vpc_id" {
    description = "VPC ID from the VPC module"
    type        = string
}

variable "vpc_cidr" {
    description = "VPC CIDR from the VPC module"
    type        = string
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "tf_tag" {
    type = bool
    default = true
    description = "Terraform identifier"
  
}
