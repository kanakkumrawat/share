variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "public_subnet_id" {
  type = string
}

variable "parent_vpc_id" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "security_groups_name" {
  type = string
}

