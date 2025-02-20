resource "aws_vpc" "vpc_name" {
  cidr_block = var.vpc_cidr
  tags = {
    description = "Name your vpc"
    Name        = var.resource_name_vpc
  }
}
