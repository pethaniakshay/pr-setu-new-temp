# VPC
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.vpc_instance_tenancy
  tags = {
    Environment = var.env
    App         = var.product
    Name        = "${var.product}-${var.env}-vpc"
  }
}
