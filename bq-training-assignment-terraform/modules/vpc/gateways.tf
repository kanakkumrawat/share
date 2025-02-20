resource "aws_eip" "nat_eip" {
  count  = var.subnet_count
  domain = "vpc"
}

resource "aws_nat_gateway" "vpc_nat" {
  count         = var.subnet_count
  subnet_id     = aws_subnet.public_subnet[count.index].id
  allocation_id = aws_eip.nat_eip[count.index].id
  tags = {
    description = "Name your nat gateway"
    Name        = "nat-gateway-${count.index + 1}"
  }
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.vpc_name.id
  tags = {
    description = "Name your internet gateway"
    Name        = var.igw_name
  }
}

