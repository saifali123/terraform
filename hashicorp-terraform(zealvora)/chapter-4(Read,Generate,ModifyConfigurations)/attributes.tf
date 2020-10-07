provider "aws" {
  profile = "default"
  region = "eu-west-1"
}

resource "aws_eip" "terraform-eip" {
  vpc = true
}

resource "aws_s3_bucket" "terraform-bucket" {
  bucket = "saifbucket0038529"
  region = "eu-west-1"
}

