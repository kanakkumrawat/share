# bq-training-assignment-terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.70.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance_accepter"></a> [instance\_accepter](#module\_instance\_accepter) | ./modules/ec2 | n/a |
| <a name="module_instance_requester"></a> [instance\_requester](#module\_instance\_requester) | ./modules/ec2 | n/a |
| <a name="module_vpc_accepter"></a> [vpc\_accepter](#module\_vpc\_accepter) | ./modules/vpc | n/a |
| <a name="module_vpc_peering"></a> [vpc\_peering](#module\_vpc\_peering) | ./modules/vpc_peering | n/a |
| <a name="module_vpc_requester"></a> [vpc\_requester](#module\_vpc\_requester) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region_accepter"></a> [aws\_region\_accepter](#input\_aws\_region\_accepter) | The AWS region for the copied VPC and instance. | `string` | `"us-east-2"` | no |
| <a name="input_aws_region_requester"></a> [aws\_region\_requester](#input\_aws\_region\_requester) | Requester vpc region | `string` | `"us-east-1"` | no |
| <a name="input_instance_subnet_count_accepter"></a> [instance\_subnet\_count\_accepter](#input\_instance\_subnet\_count\_accepter) | Number of instances in accepter vpc | `number` | `2` | no |
| <a name="input_instance_subnet_count_requester"></a> [instance\_subnet\_count\_requester](#input\_instance\_subnet\_count\_requester) | Number of instances in requester vpc | `number` | `2` | no |
| <a name="input_intgw_name_accepter"></a> [intgw\_name\_accepter](#input\_intgw\_name\_accepter) | Internet gateway name accepter vpc | `string` | `"igw-accepter"` | no |
| <a name="input_intgw_name_requester"></a> [intgw\_name\_requester](#input\_intgw\_name\_requester) | Internet gateway name in requeaster vpc | `string` | `"igw-requester"` | no |
| <a name="input_private_subnet_cidr_accepter"></a> [private\_subnet\_cidr\_accepter](#input\_private\_subnet\_cidr\_accepter) | The CIDR block for the private subnet in the copied VPC. | `list(string)` | <pre>[<br/>  "10.20.0.0/20",<br/>  "10.20.16.0/20"<br/>]</pre> | no |
| <a name="input_private_subnet_cidr_requester"></a> [private\_subnet\_cidr\_requester](#input\_private\_subnet\_cidr\_requester) | The CIDR block for the private subnet in the main VPC. | `list(string)` | <pre>[<br/>  "10.10.0.0/20",<br/>  "10.10.16.0/20"<br/>]</pre> | no |
| <a name="input_pub_route_table_name_accepter"></a> [pub\_route\_table\_name\_accepter](#input\_pub\_route\_table\_name\_accepter) | Public route table name in accepter vpc | `string` | `"public-route_table-accepter"` | no |
| <a name="input_pub_route_table_name_requester"></a> [pub\_route\_table\_name\_requester](#input\_pub\_route\_table\_name\_requester) | Public route table name of requester vpc | `string` | `"public-route-table-requester"` | no |
| <a name="input_public_subnet_cidr_accepter"></a> [public\_subnet\_cidr\_accepter](#input\_public\_subnet\_cidr\_accepter) | The CIDR block for the public subnet in the copied VPC. | `list(string)` | <pre>[<br/>  "10.20.128.0/20",<br/>  "10.20.144.0/20"<br/>]</pre> | no |
| <a name="input_public_subnet_cidr_requester"></a> [public\_subnet\_cidr\_requester](#input\_public\_subnet\_cidr\_requester) | The CIDR block for the public subnet in the main VPC. | `list(string)` | <pre>[<br/>  "10.10.128.0/20",<br/>  "10.10.144.0/20"<br/>]</pre> | no |
| <a name="input_resource_name_vpc_accepter"></a> [resource\_name\_vpc\_accepter](#input\_resource\_name\_vpc\_accepter) | The resource name for the copied VPC. | `string` | `"vpc-accepter"` | no |
| <a name="input_resource_name_vpc_requester"></a> [resource\_name\_vpc\_requester](#input\_resource\_name\_vpc\_requester) | The resource name for the main VPC. | `string` | `"vpc-requester"` | no |
| <a name="input_security_group_cidr_accepter"></a> [security\_group\_cidr\_accepter](#input\_security\_group\_cidr\_accepter) | Enter cidr to get allowed in security group rule in accepter vpc | `string` | `"0.0.0.0/0"` | no |
| <a name="input_security_group_cidr_requester"></a> [security\_group\_cidr\_requester](#input\_security\_group\_cidr\_requester) | Enter cidr to get allowed in security group rule in requester vpc | `string` | `"0.0.0.0/0"` | no |
| <a name="input_security_group_name_accepter"></a> [security\_group\_name\_accepter](#input\_security\_group\_name\_accepter) | Accepter security group name | `string` | `"instance-accepter-sg"` | no |
| <a name="input_security_group_name_requester"></a> [security\_group\_name\_requester](#input\_security\_group\_name\_requester) | Requester vpc security group name | `string` | `"instance-requester-sg"` | no |
| <a name="input_vpc_cidr_accepter"></a> [vpc\_cidr\_accepter](#input\_vpc\_cidr\_accepter) | The CIDR block for the copied VPC. | `string` | `"10.20.0.0/16"` | no |
| <a name="input_vpc_cidr_requester"></a> [vpc\_cidr\_requester](#input\_vpc\_cidr\_requester) | The CIDR block for the requester VPC. | `string` | `"10.10.0.0/16"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

