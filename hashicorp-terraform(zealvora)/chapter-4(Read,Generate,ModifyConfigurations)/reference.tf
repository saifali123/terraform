resource "aws_eip" "terraformeip" {
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