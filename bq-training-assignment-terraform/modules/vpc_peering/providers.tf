# Create VPC peering connection
provider "aws" {
  region = var.requester_region
}
provider "aws" {
  alias  = "accepter"
  region = var.accepter_region # Specify the region where the VPC peering connection exists
}
