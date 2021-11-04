resource "aws_security_group" "ssh_access" {
  name        = "ssh_access"
  description = "Allow SSH access"

  ingress {
      description      = "SSH access"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = [var.ssh_ip]
  }

  tags = {
    STACK = var.prod_stack_tag
    NAME = "SG_SSH_DEV"
    PRODUCT = var.product_tag
    COST_CENTER = ""
  }
}

output "ssh_access_sg_id" {
  value = aws_security_group.ssh_access.id
}