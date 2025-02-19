

resource "aws_subnet" "private_subnet" {
  count = var.private_subnet_count

  vpc_id            = aws_vpc.vpc_name.id
  cidr_block        = var.private_subnet_cidr[count.index]
  availability_zone = local.az_names[count.index]

  tags = {
    description = "Name your private subnet"
    Name        = "private-subnet-${local.az_names[count.index]}-${count.index}"
  }
  map_public_ip_on_launch = false
}

