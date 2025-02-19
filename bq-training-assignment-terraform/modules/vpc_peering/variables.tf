variable "requester_id" {
  description = "Requester VPC id"
  type        = string
}

variable "accepter_id" {
  description = "Accepter VPC id"
  type        = string
}

variable "vpc_requester_pub_route_table_id" {
  type = string
}

variable "vpc_accepter_pub_route_table_id" {
  type = string
}

variable "vpc_requester_pri_route_table_id" {
  type = string
}

variable "vpc_accepter_pri_route_table_id" {
  type = string
}

variable "requester_cidr" {
  type = string
}

variable "accepter_cidr" {
  type = string
}

variable "requester_region" {
  type = string
}

variable "accepter_region" {
  type = string
}