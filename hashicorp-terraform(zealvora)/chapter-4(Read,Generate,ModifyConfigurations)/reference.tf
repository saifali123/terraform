provider "aws" {
  profile = "default"
  region = "eu-west-1"
}

# attributes.tf
/*
resource "aws_eip" "terraform-eip" {
  vpc = true
}

output "eip" {
  value = aws_eip.terraform-eip.public_ip
}

resource "aws_s3_bucket" "terraform-bucket" {
  bucket = "saifbucket0038529"
}

output "s3" {
  value = aws_s3_bucket.terraform-bucket.bucket_domain_name
}
*/

resource "aws_eip" "terraformeip" {
  vpc = true
}

resource "aws_eip" "terraform-eip" {
  vpc = true
}


resource "aws_instance" "terraformec2" {
  ami = "ami-08a2aed6e0a6f9c7d"
  instance_type = "t2.micro"
}

resource "aws_eip_association" "terraformeipassoction" {
  instance_id = aws_instance.terraformec2.id
  allocation_id = aws_eip.terraform-eip.id
}