# Requester VPC
aws_region_requester             = "us-east-1"
vpc_cidr_requester               = "10.0.0.0/16"
private_subnet_cidr_requester    = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
public_subnet_cidr_requester     = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
resource_name_vpc_requester      = "vpc-requester"
resource_name_instance_requester = "instance-requester"
security_group_name_requester    = "instance-requester-sg"
private_subnet_name_requester    = "private-subnet-requester"
public_subnet_name_requester     = "public-subnet-requester"
ngw_name_requester               = "ngw-requester"
intgw_name_requester             = "igw-requester"
pri_route_table_name_requester   = "private-route-table-requester"
pub_route_table_name_requester   = "public-route-table-requester"

# Accepter VPC
aws_region_accepter             = "us-east-2"
vpc_cidr_accepter               = "10.20.0.0/16"
private_subnet_cidr_accepter    = ["10.20.0.0/20", "10.20.16.0/20", "10.20.32.0/20"]
public_subnet_cidr_accepter     = ["10.20.128.0/20", "10.20.144.0/20", "10.20.160.0/20"]
resource_name_vpc_accepter      = "vpc-accepter"
resource_name_instance_accepter = "instance-accepter"
security_group_name_accepter    = "instance-accepter-sg"
private_subnet_name_accepter    = "private-subnet-accepter"
public_subnet_name_accepter     = "public-subnet-accepter"
ngw_name_accepter               = "ngw-accepter"
intgw_name_accepter             = "igw-accepter"
pri_route_table_name_accepter   = "private-route-table-accepter"
pub_route_table_name_accepter   = "public-route-table-accepter"



private_subnet_count = 3
public_subnet_count  = 3