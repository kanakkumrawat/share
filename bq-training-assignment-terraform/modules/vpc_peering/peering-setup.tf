resource "aws_vpc_peering_connection" "peering" {
  vpc_id      = var.requester_id
  peer_vpc_id = var.accepter_id
  auto_accept = false
  peer_region = var.accepter_region
}

resource "aws_vpc_peering_connection_accepter" "accepter" {
  provider                  = aws.accepter
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
  auto_accept               = true
}