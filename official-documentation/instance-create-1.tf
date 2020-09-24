terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-08a2aed6e0a6f9c7d"
  instance_type = "t2.micro"
  subnet_id = "subnet-23cc5b79"
  vpc_security_group_ids = ["sg-0aea740d7f15597de"]
}