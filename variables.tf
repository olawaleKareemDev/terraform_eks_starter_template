variable "aws_region" {
  description = "us-east-1"
  type = string
  default = "us-east-1" #change to your value
}

variable "aws_backend_bucket" {
  description = "Remote backend state bucket"
  type = string
  default = "tf-backend-bucket-09876543" #change to your value
}

variable "aws_backend_bucket_key" {
  description = "Remote backend state bucket key"
  type = string
  default = "tf_state" #change to your value
}

variable "aws_backend_dynamodb" {
  description = "Remote backend state bucket key"
  type = string
  default = "terraform-lock" #change to your value
}