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

variable "public_route_table_name" {
  type    = string
  default = "public-route-table"
}

variable "igw_name" {
  type    = string
  default = "vpc-internet-gateway"
}

variable "subnet_count" {
  description = "Both public and private subnet count should be same"
  type        = number
  default     = 1
}

