resource "aws_subnet" "public_subnet" {
  count = var.public_subnet_count

  vpc_id            = aws_vpc.vpc_name.id
  cidr_block        = var.public_subnet_cidr[count.index]
  availability_zone = local.az_names[count.index]

  tags = {
    description = "Name your private subnet"
    Name        = "public-subnet-${local.az_names[count.index]}-${count.index}"
  }
  map_public_ip_on_launch = true
}
