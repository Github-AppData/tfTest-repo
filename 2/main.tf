terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-3"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "172.18.0.0/24"
  tags = {
    Name = "KTW-Terraform"
  }
}
