variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  description = "Private Subnet CIDR block"
  type        = list(string)
  default     = ["10.0.0.0/20"]
}

variable "public_subnet_cidr" {
  description = "Public Subnet CIDR block"
  type        = list(string)
  default     = ["10.128.0.0/20"]
}

variable "resource_name_vpc" {
  type    = string
  default = "vpc"
}

# variable "private_subnet_name" {
#   type = string
#   default = "vpc-private-subnet"
# }

# variable "public_subnet_name" {
#   type = string
#   default = "vpc-public-subnet"
# }

variable "private_route_table_name" {
  type    = string
  default = "private-route-table"
}

variable "public_route_table_name" {
  type    = string
  default = "public-route-table"
}

variable "igw_name" {
  type    = string
  default = "vpc-internet-gateway"
}

variable "nat_gw_name" {
  type    = string
  default = "vpc-nat-gateway"
}

variable "private_subnet_count" {
  type    = number
  default = 1
}

variable "public_subnet_count" {
  type    = number
  default = 1
}

