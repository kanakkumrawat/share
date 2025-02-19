provider "aws" {
  alias  = "requester_region"
  region = var.aws_region_requester
}

provider "aws" {
  alias  = "accepter_region"
  region = var.aws_region_accepter
}