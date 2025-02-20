# Requester VPC variables
variable "vpc_cidr_requester" {
  description = "The CIDR block for the requester VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "private_subnet_cidr_requester" {
  description = "The CIDR block for the private subnet in the main VPC."
  type        = list(string)
  default     = ["10.10.0.0/20", "10.10.16.0/20"]
}

variable "public_subnet_cidr_requester" {
  description = "The CIDR block for the public subnet in the main VPC."
  type        = list(string)
  default     = ["10.10.128.0/20", "10.10.144.0/20"]
}

variable "resource_name_vpc_requester" {
  description = "The resource name for the main VPC."
  type        = string
  default     = "vpc-requester"
}

variable "aws_region_requester" {
  description = "Requester vpc region"
  type        = string
  default     = "us-east-1"
}

variable "security_group_name_requester" {
  description = "Requester vpc security group name"
  type        = string
  default     = "instance-requester-sg"
}

variable "intgw_name_requester" {
  description = "Internet gateway name in requeaster vpc"
  type        = string
  default     = "igw-requester"
}

variable "pub_route_table_name_requester" {
  description = "Public route table name of requester vpc"
  type        = string
  default     = "public-route-table-requester"
}

variable "instance_subnet_count_requester" {
  description = "Number of instances in requester vpc"
  type        = number
  default     = 2
}

variable "security_group_cidr_requester" {
  description = "Enter cidr to get allowed in security group rule in requester vpc"
  type        = string
  default     = "0.0.0.0/0"
}


# Accepter VPC variables
variable "aws_region_accepter" {
  description = "The AWS region for the copied VPC and instance."
  type        = string
  default     = "us-east-2"
}

variable "vpc_cidr_accepter" {
  description = "The CIDR block for the copied VPC."
  type        = string
  default     = "10.20.0.0/16"
}

variable "private_subnet_cidr_accepter" {
  description = "The CIDR block for the private subnet in the copied VPC."
  type        = list(string)
  default     = ["10.20.0.0/20", "10.20.16.0/20"]
}

variable "public_subnet_cidr_accepter" {
  description = "The CIDR block for the public subnet in the copied VPC."
  type        = list(string)
  default     = ["10.20.128.0/20", "10.20.144.0/20"]
}

variable "resource_name_vpc_accepter" {
  description = "The resource name for the copied VPC."
  type        = string
  default     = "vpc-accepter"
}

variable "security_group_name_accepter" {
  description = "Accepter security group name"
  type        = string
  default     = "instance-accepter-sg"
}

variable "intgw_name_accepter" {
  description = "Internet gateway name accepter vpc"
  type        = string
  default     = "igw-accepter"
}

variable "pub_route_table_name_accepter" {
  description = "Public route table name in accepter vpc"
  type        = string
  default     = "public-route_table-accepter"
}

variable "instance_subnet_count_accepter" {
  description = "Number of instances in accepter vpc"
  type        = number
  default     = 2
}

variable "security_group_cidr_accepter" {
  description = "Enter cidr to get allowed in security group rule in accepter vpc"
  type        = string
  default     = "0.0.0.0/0"
}

