resource "aws_eip" "terraformeip" {
  vpc = true
}

resource "aws_instance" "terraformec2" {
  ami = "ami-08a2aed6e0a6f9c7d"
  instance_type = "t2.micro"
  associate_public_ip_address = aws_eip.terraform-eip.public_ip
}