terraform {
  required_version = ">= 1.0.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }

  backend "s3" {
    bucket         = var.aws_backend_bucket
    key            = var.aws_backend_bucket
    region         = var.aws_region
    dynamodb_table = var.aws_backend_dynamodb
    encrypt        = true
  }

}