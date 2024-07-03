# Provider and terraform version

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}


provider "aws" {
  region = var.INSTANCE_TYPE
}