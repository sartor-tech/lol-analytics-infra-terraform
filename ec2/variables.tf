variable "prod_stack_tag" {
  type = string
  default = "PROD"
}
variable "product_tag" {
  type = string
  default = "ELOL_ANALYTICS"
}

variable "ec2_ami" {
  type = string
  default = "ami-02e136e904f3da870"
}

variable "ssh_sg_id" {}