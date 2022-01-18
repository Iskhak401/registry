resource "aws_vpc" "own" {
  cidr_block       = "10.0.1.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "var.name"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.own.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_instance" "mine" {
  ami           = var.ami
  instance_type = var.type
  subnet_id = aws_subnet.main.id
  tags = {
    Name = "HelloWorld"
  }
}

  
