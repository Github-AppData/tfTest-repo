terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.29.0"
    }   
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-3"
}

resource "aws_instance" "app_server" {
  ami                   = "ami-0ed710448190e7f1c"
  instance_type         = "t4g.micro"
  tags = {  
    Name = "ExampleAppServerInstance"
  }
}
