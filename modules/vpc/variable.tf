variable "vpc_name" {
  type    = string
  default = "demo_vpc"     #change to your value
  description = "vpc name"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"     #change to your value
  description = "vpc cidr"
}

variable    "environment" {
    type= string
    default= "demo environment"           #change to your value
    description = "Environment of deployment"
}

variable "tf_tag" {
    type = bool
    default = true         #change to your value
    description = "Terraform identifier"
  
}