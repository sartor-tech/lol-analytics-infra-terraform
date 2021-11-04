provider "aws" {
  version = "~> 2.0"
  region = var.aws_region
}

module "s3" {
  source = "./s3"
}

module "ec2" {
  source = "./ec2"
  ssh_sg_id = "${module.vpc.ssh_access_sg_id}"
}

module "vpc" {
  source = "./vpc"
}