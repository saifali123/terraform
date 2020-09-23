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
  ami           = "ami-06fd8a495a537da8b"
  instance_type = "t2.micro"
  subnet_id = "subnet-23cc5b79"
  vpc_security_group_ids = [sg-0aea740d7f15597de]
}