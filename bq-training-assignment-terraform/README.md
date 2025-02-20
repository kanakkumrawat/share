# bq-training-assignment-terraform

# Terraform AWS VPC Peering Setup

This repository provides an automated AWS infrastructure using Terraform, enabling VPC peering between two VPCs, each containing EC2 instances, networking components, and security configurations.

## Usage

```hcl
module "vpc_peering_setup" {
  source = "bq-training-terraform-assignment/modules/vpc_peering"

  # Requester VPC Configuration
  aws_region_requester            = "us-east-1"
  vpc_cidr_requester              = "10.10.0.0/16"
  private_subnet_cidr_requester   = ["10.10.0.0/20", "10.10.16.0/20", "10.10.32.0/20"]
  public_subnet_cidr_requester    = ["10.10.128.0/20", "10.10.144.0/20", "10.10.160.0/20"]
  resource_name_vpc_requester     = "vpc-requester"
  security_group_name_requester   = "instance-requester-sg"
  intgw_name_requester            = "igw-requester"
  pub_route_table_name_requester  = "public-route-table-requester"
  security_group_cidr_requester   = "0.0.0.0/0"
  instance_subnet_count_requester = 3

  # Accepter VPC Configuration
  aws_region_accepter            = "us-east-2"
  vpc_cidr_accepter              = "10.20.0.0/16"
  private_subnet_cidr_accepter   = ["10.20.0.0/20", "10.20.16.0/20", "10.20.32.0/20"]
  public_subnet_cidr_accepter    = ["10.20.128.0/20", "10.20.144.0/20", "10.20.160.0/20"]
  resource_name_vpc_accepter     = "vpc-accepter"
  security_group_name_accepter   = "instance-accepter-sg"
  intgw_name_accepter            = "igw-accepter"
  pub_route_table_name_accepter  = "public-route-table-accepter"
  security_group_cidr_accepter   = "0.0.0.0/0"
  instance_subnet_count_accepter = 3

}
```

---

## Prerequisites

### 1. AWS Credentials Setup

Ensure your AWS credentials are properly configured. You can set them up using:

```sh
aws configure
```

### 2. Backend Configuration

This project utilizes S3 for state storage and DynamoDB for state locking.
Modify `backend.tf` to specify your S3 bucket and DynamoDB table before applying Terraform.

### 3. Customizing Instance Boot Script

The default boot script initializes an Apache web server on EC2 instances.
To modify it, navigate to:

```
modules/ec2/scripts/script.sh
```

Make necessary adjustments as per your requirements.

### 4. Avoid SSH Key Conflicts

Terraform assigns SSH key names dynamically using:

```sh
instance-${count.index + 1}-${var.aws_region}-ssh-key
```

Ensure your AWS account does not already have conflicting key names.

---

## Infrastructure Overview

This Terraform setup provisions the following AWS resources:

- VPC Peering Connection → Enables secure communication between two VPCs.
- Requester & Accepter VPCs → Two separate Virtual Private Clouds.
- Subnets (Public & Private) → Network segmentation within each VPC.
- EC2 Instances → Deployed in both VPCs to simulate networked environments.
- Security Groups → Defines access rules for instances.
- Internet & NAT Gateways → Handles external and internal network routing.

---

## Deployment Instructions

### 1. Clone the Repository

```sh
git clone <repository-url>
cd <project-directory>
```

### 2. Initialize Terraform

```sh
terraform init
```

### 3. Preview the Changes

```sh
terraform plan
```

### 4. Validate the State file

```sh
terraform validate
```

### 5. Deploy Infrastructure

```sh
terraform apply
or
terraform apply --auto-approve
```

### 6. (Optional) Destroy Infrastructure

If you need to remove all resources:

```sh
terraform destroy
or
terraform destroy --auto-approve
```

---

## Troubleshooting & Notes

- Ensure IAM permissions allow Terraform to manage VPC peering, EC2, subnets, and security groups.
- If encountering backend state issues, verify your S3 bucket and DynamoDB table configuration.
- Modify CIDR block variables in `terraform.tfvars` to customize the subnet structure.

---

## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.10.1 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | >= 5.70.0 |

## Providers

No providers.

## Modules

| Name                                                                                      | Source                | Version |
| ----------------------------------------------------------------------------------------- | --------------------- | ------- |
| <a name="module_instance_accepter"></a> [instance_accepter](#module_instance_accepter)    | ./modules/ec2         | n/a     |
| <a name="module_instance_requester"></a> [instance_requester](#module_instance_requester) | ./modules/ec2         | n/a     |
| <a name="module_vpc_accepter"></a> [vpc_accepter](#module_vpc_accepter)                   | ./modules/vpc         | n/a     |
| <a name="module_vpc_peering"></a> [vpc_peering](#module_vpc_peering)                      | ./modules/vpc_peering | n/a     |
| <a name="module_vpc_requester"></a> [vpc_requester](#module_vpc_requester)                | ./modules/vpc         | n/a     |

## Resources

No resources.

## Inputs

| Name                                                                                                                           | Description                                                       | Type           | Default                                                         | Required |
| ------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------- | -------------- | --------------------------------------------------------------- | :------: |
| <a name="input_aws_region_accepter"></a> [aws_region_accepter](#input_aws_region_accepter)                                     | The AWS region for the copied VPC and instance.                   | `string`       | `"us-east-2"`                                                   |    no    |
| <a name="input_aws_region_requester"></a> [aws_region_requester](#input_aws_region_requester)                                  | Requester vpc region                                              | `string`       | `"us-east-1"`                                                   |    no    |
| <a name="input_instance_subnet_count_accepter"></a> [instance_subnet_count_accepter](#input_instance_subnet_count_accepter)    | Number of instances in accepter vpc                               | `number`       | `2`                                                             |    no    |
| <a name="input_instance_subnet_count_requester"></a> [instance_subnet_count_requester](#input_instance_subnet_count_requester) | Number of instances in requester vpc                              | `number`       | `2`                                                             |    no    |
| <a name="input_intgw_name_accepter"></a> [intgw_name_accepter](#input_intgw_name_accepter)                                     | Internet gateway name accepter vpc                                | `string`       | `"igw-accepter"`                                                |    no    |
| <a name="input_intgw_name_requester"></a> [intgw_name_requester](#input_intgw_name_requester)                                  | Internet gateway name in requeaster vpc                           | `string`       | `"igw-requester"`                                               |    no    |
| <a name="input_private_subnet_cidr_accepter"></a> [private_subnet_cidr_accepter](#input_private_subnet_cidr_accepter)          | The CIDR block for the private subnet in the copied VPC.          | `list(string)` | <pre>[<br/> "10.20.0.0/20",<br/> "10.20.16.0/20"<br/>]</pre>    |    no    |
| <a name="input_private_subnet_cidr_requester"></a> [private_subnet_cidr_requester](#input_private_subnet_cidr_requester)       | The CIDR block for the private subnet in the main VPC.            | `list(string)` | <pre>[<br/> "10.10.0.0/20",<br/> "10.10.16.0/20"<br/>]</pre>    |    no    |
| <a name="input_pub_route_table_name_accepter"></a> [pub_route_table_name_accepter](#input_pub_route_table_name_accepter)       | Public route table name in accepter vpc                           | `string`       | `"public-route_table-accepter"`                                 |    no    |
| <a name="input_pub_route_table_name_requester"></a> [pub_route_table_name_requester](#input_pub_route_table_name_requester)    | Public route table name of requester vpc                          | `string`       | `"public-route-table-requester"`                                |    no    |
| <a name="input_public_subnet_cidr_accepter"></a> [public_subnet_cidr_accepter](#input_public_subnet_cidr_accepter)             | The CIDR block for the public subnet in the copied VPC.           | `list(string)` | <pre>[<br/> "10.20.128.0/20",<br/> "10.20.144.0/20"<br/>]</pre> |    no    |
| <a name="input_public_subnet_cidr_requester"></a> [public_subnet_cidr_requester](#input_public_subnet_cidr_requester)          | The CIDR block for the public subnet in the main VPC.             | `list(string)` | <pre>[<br/> "10.10.128.0/20",<br/> "10.10.144.0/20"<br/>]</pre> |    no    |
| <a name="input_resource_name_vpc_accepter"></a> [resource_name_vpc_accepter](#input_resource_name_vpc_accepter)                | The resource name for the copied VPC.                             | `string`       | `"vpc-accepter"`                                                |    no    |
| <a name="input_resource_name_vpc_requester"></a> [resource_name_vpc_requester](#input_resource_name_vpc_requester)             | The resource name for the main VPC.                               | `string`       | `"vpc-requester"`                                               |    no    |
| <a name="input_security_group_cidr_accepter"></a> [security_group_cidr_accepter](#input_security_group_cidr_accepter)          | Enter cidr to get allowed in security group rule in accepter vpc  | `string`       | `"0.0.0.0/0"`                                                   |    no    |
| <a name="input_security_group_cidr_requester"></a> [security_group_cidr_requester](#input_security_group_cidr_requester)       | Enter cidr to get allowed in security group rule in requester vpc | `string`       | `"0.0.0.0/0"`                                                   |    no    |
| <a name="input_security_group_name_accepter"></a> [security_group_name_accepter](#input_security_group_name_accepter)          | Accepter security group name                                      | `string`       | `"instance-accepter-sg"`                                        |    no    |
| <a name="input_security_group_name_requester"></a> [security_group_name_requester](#input_security_group_name_requester)       | Requester vpc security group name                                 | `string`       | `"instance-requester-sg"`                                       |    no    |
| <a name="input_vpc_cidr_accepter"></a> [vpc_cidr_accepter](#input_vpc_cidr_accepter)                                           | The CIDR block for the copied VPC.                                | `string`       | `"10.20.0.0/16"`                                                |    no    |
| <a name="input_vpc_cidr_requester"></a> [vpc_cidr_requester](#input_vpc_cidr_requester)                                        | The CIDR block for the requester VPC.                             | `string`       | `"10.10.0.0/16"`                                                |    no    |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
