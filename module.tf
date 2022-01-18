provider "aws" {
    region = "us-east-1"
}

module "vpc" {
  source = "./registrymy"
  name = "my-vpc"
  ami             = "ami-08e4e35cccc6189f4 "
  type          = "t2.micro"
}
