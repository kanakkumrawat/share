output "vpc_id" {
  value = aws_vpc.vpc_name.id
}

output "public_sub_id" {
  value = aws_subnet.public_subnet.id
}

output "public_route_table_id" {
  value = aws_route_table.public_route_table.id
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
}

output "vpc_cidr_value" {
  value = aws_vpc.vpc_name.cidr_block
}