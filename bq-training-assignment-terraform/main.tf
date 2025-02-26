module "vpc_requester" {
  source                  = "./modules/vpc"
  vpc_cidr                = var.vpc_cidr_requester
  private_subnet_cidr     = var.private_subnet_cidr_requester
  public_subnet_cidr      = var.public_subnet_cidr_requester
  resource_name_vpc       = var.resource_name_vpc_requester
  igw_name                = var.intgw_name_requester
  public_route_table_name = var.pub_route_table_name_requester
  subnet_count            = var.instance_subnet_count_requester
}

module "instance_requester" {
  source               = "./modules/ec2"
  aws_region           = var.aws_region_requester
  public_subnet_id     = module.vpc_requester.public_sub_id[*]
  parent_vpc_id        = module.vpc_requester.vpc_id
  security_groups_name = var.security_group_name_requester
  security_group_cidr  = var.security_group_cidr_requester
  instance_count       = var.instance_subnet_count_requester
}

module "vpc_accepter" {
  source                  = "./modules/vpc"
  aws_region              = var.aws_region_accepter
  vpc_cidr                = var.vpc_cidr_accepter
  private_subnet_cidr     = var.private_subnet_cidr_accepter
  public_subnet_cidr      = var.public_subnet_cidr_accepter
  resource_name_vpc       = var.resource_name_vpc_accepter
  igw_name                = var.intgw_name_accepter
  public_route_table_name = var.pub_route_table_name_accepter
  subnet_count            = var.instance_subnet_count_accepter
}

module "instance_accepter" {
  source               = "./modules/ec2"
  aws_region           = var.aws_region_accepter
  public_subnet_id     = module.vpc_accepter.public_sub_id[*]
  parent_vpc_id        = module.vpc_accepter.vpc_id
  security_groups_name = var.security_group_name_accepter
  security_group_cidr  = var.security_group_cidr_accepter
  instance_count       = var.instance_subnet_count_accepter
}

module "vpc_peering" {
  source                           = "./modules/vpc_peering"
  requester_id                     = module.vpc_requester.vpc_id
  accepter_id                      = module.vpc_accepter.vpc_id
  vpc_requester_pri_route_table_id = module.vpc_requester.private_route_table_id
  vpc_requester_pub_route_table_id = module.vpc_requester.public_route_table_id
  vpc_accepter_pri_route_table_id  = module.vpc_accepter.private_route_table_id
  vpc_accepter_pub_route_table_id  = module.vpc_accepter.public_route_table_id
  requester_cidr                   = module.vpc_requester.vpc_cidr_value
  accepter_cidr                    = module.vpc_accepter.vpc_cidr_value
  subnet_count_requester           = var.instance_subnet_count_requester
  subnet_count_accepter            = var.instance_subnet_count_accepter
  requester_region                 = var.aws_region_requester
  accepter_region                  = var.aws_region_accepter
}

