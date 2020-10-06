provider "aws" {
  region = "eu-west-1"
  profile = "default"
}

resource "aws_vpc" "terraform-naming-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-first-terraform-vpc"
  }
}
resource "aws_subnet" "terraform-naming-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.terraform-naming-vpc.id
  tags = {
    Name = "my-first-terraform-subnet"
  }
}

resource "aws_instance" "terraform-naming-instance" {
  ami = "ami-06fd8a495a537da8b"
  instance_type = "t3.micro"
  tags = {
    Name = "ubuntu20.0image"
  }
  subnet_id = aws_subnet.terraform-naming-subnet.id
}

