provider "aws" {
  version = "~> 2.0"
  region = "us-east-1"
}

resource "aws_instance" "ec2-dev" {
  count = 3
  ami = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    STACK = "DEV"
    NAME = "EC2_DEV${count.index}"
    PRODUCT = "LOL_ANALYTICS"
    COST_CENTER = ""
  }
}