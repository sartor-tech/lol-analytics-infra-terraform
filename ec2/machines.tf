resource "aws_instance" "ec2-drone" {
  ami = var.ec2_ami
  instance_type = "t2.micro"
  key_name = "terraform-aws"

  tags = {
    STACK = var.prod_stack_tag
    NAME = "EC2_DRONE_CI"
    PRODUCT = var.product_tag
    COST_CENTER = ""
  }

  vpc_security_group_ids = [var.ssh_sg_id]
}