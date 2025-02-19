resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "vpc_nat" {
  subnet_id     = aws_subnet.public_subnet.id
  allocation_id = aws_eip.nat_eip.id
  tags = {
    description = "Name your nat gateway"
    Name        = var.nat_gw_name
  }
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.vpc_name.id
  tags = {
    description = "Name your internet gateway"
    Name        = var.igw_name
  }
}
