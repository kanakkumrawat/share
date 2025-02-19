# Requester VPC variables
variable "vpc_cidr_requester" {
  description = "The CIDR block for the requester VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "private_subnet_cidr_requester" {
  description = "The CIDR block for the private subnet in the main VPC."
  type        = list(string)
  default     = ["10.10.0.0/20"]
}

variable "public_subnet_cidr_requester" {
  description = "The CIDR block for the public subnet in the main VPC."
  type        = list(string)
  default     = ["10.10.16.0/20"]
}

variable "resource_name_vpc_requester" {
  description = "The resource name for the main VPC."
  type        = string
  default     = "vpc-requester"
}

variable "resource_name_instance_requester" {
  description = "The resource name for the requester VPC."
  type        = string
  default     = "instance-requester"
}

variable "aws_region_requester" {
  type    = string
  default = "us-east-1"
}

variable "security_group_name_requester" {
  type    = string
  default = "instance-requester-sg"
}

# variable "private_subnet_name_requester" {
#   type    = string
#   default = "private-subnet-requester"
# }

# variable "public_subnet_name_requester" {
#   type    = string
#   default = "public-subnet-requester"
# }

variable "ngw_name_requester" {
  type    = string
  default = "ngw-requester"
}

variable "intgw_name_requester" {
  type    = string
  default = "igw-requester"
}

variable "pri_route_table_name_requester" {
  type    = string
  default = "private-route-table-requester"
}

variable "pub_route_table_name_requester" {
  type    = string
  default = "public-route-table-requester"
}

variable "private_subnet_count_requester" {
  type    = number
  default = 2
}

variable "public_subnet_count_requester" {
  type    = number
  default = 2
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
  default     = ["10.20.0.0/20"]
}

variable "public_subnet_cidr_accepter" {
  description = "The CIDR block for the public subnet in the copied VPC."
  type        = list(string)
  default     = ["10.20.16.0/20"]
}

variable "resource_name_vpc_accepter" {
  description = "The resource name for the copied VPC."
  type        = string
  default     = "vpc-accepter"
}

variable "resource_name_instance_accepter" {
  description = "The resource name for the copied EC2 instance."
  type        = string
  default     = "instance-accepter"
}

variable "security_group_name_accepter" {
  type    = string
  default = "instance-accepter-sg"
}

# variable "private_subnet_name_accepter" {
#   type    = string
#   default = "private-subnet-accepter"
# }

# variable "public_subnet_name_accepter" {
#   type    = string
#   default = "public-subnet-accepter"
# }

variable "ngw_name_accepter" {
  type    = string
  default = "ngw-accepter"
}

variable "intgw_name_accepter" {
  type    = string
  default = "igw-accepter"
}

variable "pri_route_table_name_accepter" {
  type    = string
  default = "private-route-table-accepter"
}

variable "pub_route_table_name_accepter" {
  type    = string
  default = "public-route_table-accepter"
}

variable "private_subnet_count_accepter" {
  type    = number
  default = 2
}

variable "public_subnet_count_accepter" {
  type    = number
  default = 2
}

