resource "aws_vpc" "own" {
  cidr_block       = "10.0.1.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "var.name"
  }
}

resource "aws_instance" "mine" {
  ami           = var.ami
  instance_type = var.type
  vpc_id = aws_vpc.own.id
  tags = {
    Name = "HelloWorld"
  }
}

  
