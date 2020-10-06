provider "aws" {
  region = "eu-west-1"
  profile = "default"
}

resource "aws_instance" "terraform-naming-instance" {
  ami = "ami-06fd8a495a537da8b"
  instance_type = "t3.micro"
  tags = {
    Name = "ubuntu20.0image"
  }

}