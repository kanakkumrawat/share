# vpc_peering

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_aws.accepter"></a> [aws.accepter](#provider\_aws.accepter) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route.route_to_vpc_accepter_private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.route_to_vpc_accepter_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.route_to_vpc_requester_private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.route_to_vpc_requester_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_vpc_peering_connection.peering](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection) | resource |
| [aws_vpc_peering_connection_accepter.accepter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection_accepter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accepter_cidr"></a> [accepter\_cidr](#input\_accepter\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_accepter_id"></a> [accepter\_id](#input\_accepter\_id) | Accepter VPC id | `string` | n/a | yes |
| <a name="input_accepter_region"></a> [accepter\_region](#input\_accepter\_region) | n/a | `string` | n/a | yes |
| <a name="input_requester_cidr"></a> [requester\_cidr](#input\_requester\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_requester_id"></a> [requester\_id](#input\_requester\_id) | Requester VPC id | `string` | n/a | yes |
| <a name="input_requester_region"></a> [requester\_region](#input\_requester\_region) | n/a | `string` | n/a | yes |
| <a name="input_subnet_count_accepter"></a> [subnet\_count\_accepter](#input\_subnet\_count\_accepter) | n/a | `number` | n/a | yes |
| <a name="input_subnet_count_requester"></a> [subnet\_count\_requester](#input\_subnet\_count\_requester) | n/a | `number` | n/a | yes |
| <a name="input_vpc_accepter_pri_route_table_id"></a> [vpc\_accepter\_pri\_route\_table\_id](#input\_vpc\_accepter\_pri\_route\_table\_id) | n/a | `list(string)` | n/a | yes |
| <a name="input_vpc_accepter_pub_route_table_id"></a> [vpc\_accepter\_pub\_route\_table\_id](#input\_vpc\_accepter\_pub\_route\_table\_id) | n/a | `string` | n/a | yes |
| <a name="input_vpc_requester_pri_route_table_id"></a> [vpc\_requester\_pri\_route\_table\_id](#input\_vpc\_requester\_pri\_route\_table\_id) | n/a | `list(string)` | n/a | yes |
| <a name="input_vpc_requester_pub_route_table_id"></a> [vpc\_requester\_pub\_route\_table\_id](#input\_vpc\_requester\_pub\_route\_table\_id) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
