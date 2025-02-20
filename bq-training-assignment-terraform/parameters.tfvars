# Requester VPC Variables
aws_region_requester            = "us-east-1"
vpc_cidr_requester              = "10.10.0.0/16"
private_subnet_cidr_requester   = ["10.10.0.0/20", "10.10.16.0/20", "10.10.32.0/20"]
public_subnet_cidr_requester    = ["10.10.128.0/20", "10.10.144.0/20", "10.10.160.0/20"]
resource_name_vpc_requester     = "vpc-requester"
security_group_name_requester   = "instance-requester-sg"
intgw_name_requester            = "igw-requester"
pub_route_table_name_requester  = "public-route-table-requester"
instance_subnet_count_requester = 3
security_group_cidr_requester   = "0.0.0.0/0"

# Accepter VPC Variables
aws_region_accepter            = "us-east-2"
vpc_cidr_accepter              = "10.20.0.0/16"
private_subnet_cidr_accepter   = ["10.20.0.0/20", "10.20.16.0/20", "10.20.32.0/20"]
public_subnet_cidr_accepter    = ["10.20.128.0/20", "10.20.144.0/20", "10.20.160.0/20"]
resource_name_vpc_accepter     = "vpc-accepter"
security_group_name_accepter   = "instance-accepter-sg"
intgw_name_accepter            = "igw-accepter"
pub_route_table_name_accepter  = "public-route-table-accepter"
instance_subnet_count_accepter = 3
security_group_cidr_accepter   = "0.0.0.0/0"
