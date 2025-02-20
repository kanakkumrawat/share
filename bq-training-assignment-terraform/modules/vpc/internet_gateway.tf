resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.vpc_name.id
  tags = {
    description = "Name your internet gateway"
    Name        = var.igw_name
  }
}

