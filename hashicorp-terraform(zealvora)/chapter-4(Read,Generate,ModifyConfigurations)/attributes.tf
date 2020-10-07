provider "aws" {
  profile = "default"
  region = "eu-west-1"
}

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