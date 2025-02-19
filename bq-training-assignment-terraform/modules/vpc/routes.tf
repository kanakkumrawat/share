resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.vpc_name.id
  tags = {
    description = "Name your private route table"
    Name        = var.private_route_table_name
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc_name.id
  tags = {
    description = "Name your public route table"
    Name        = var.public_route_table_name
  }
}

resource "aws_route_table_association" "private_route_table_association" {
  route_table_id = aws_route_table.private_route_table.id
  subnet_id      = aws_subnet.private_subnet.id
}

resource "aws_route" "private_route" {
  nat_gateway_id         = aws_nat_gateway.vpc_nat.id
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "public_route_table_association" {
  route_table_id = aws_route_table.public_route_table.id
  subnet_id      = aws_subnet.public_subnet.id
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  gateway_id             = aws_internet_gateway.vpc_igw.id
  destination_cidr_block = "0.0.0.0/0"
}

