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

variable "private_subnets" {
  description = "Private subnet"
}


variable "internet_gateway_id" {
  description = "Internet gateway ID"

}

variable "nat_gateway_id" {
  description = "Nat gateway ID"
}

variable "tf_tag" {
    type = bool
    default = true        #change to your value
    description = "Terraform identifier"
  
}

variable "name_pub_rtb_tag" {
    type = string
    default = "demo_public_rtb"      #change to your value
    description = "Public route table tag"
  
}

variable "name_priv_rtb_tag" {
    type = string
    default = "demo_private_rtb"    #change to your value
    description = "Public route table tag"
  
}