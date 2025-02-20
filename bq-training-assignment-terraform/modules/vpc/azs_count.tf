data "aws_availability_zones" "vpc_region_azs" {
  state = "available"
}

locals {
  az_count = length(data.aws_availability_zones.vpc_region_azs.names)
  az_names = data.aws_availability_zones.vpc_region_azs.names
}

