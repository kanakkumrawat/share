resource "aws_route" "route_to_vpc_accepter_private" {
  count                     = var.subnet_count_requester
  route_table_id            = var.vpc_requester_pri_route_table_id[count.index] # Specify route table ID of VPC1
  destination_cidr_block    = var.accepter_cidr                                 # CIDR block of VPC2
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id             # Specify peering connection ID
}

resource "aws_route" "route_to_vpc_requester_private" {
  provider                  = aws.accepter
  count                     = var.subnet_count_accepter
  route_table_id            = var.vpc_accepter_pri_route_table_id[count.index] # Specify route table ID of VPC2
  destination_cidr_block    = var.requester_cidr                               # CIDR block of VPC1
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id            # Specify peering connection ID
}

resource "aws_route" "route_to_vpc_accepter_public" {
  route_table_id            = var.vpc_requester_pub_route_table_id  # Specify route table ID of VPC1
  destination_cidr_block    = var.accepter_cidr                     # CIDR block of VPC2
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id # Specify peering connection ID
}

resource "aws_route" "route_to_vpc_requester_public" {
  provider                  = aws.accepter
  route_table_id            = var.vpc_accepter_pub_route_table_id   # Specify route table ID of VPC2
  destination_cidr_block    = var.requester_cidr                    # CIDR block of VPC1
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id # Specify peering connection ID
}

