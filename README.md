AWS VPC using Terraform
📌 Overview

This project provisions a secure and production-style AWS VPC using Terraform.
It follows a public and private subnet architecture with controlled internet access using a NAT Gateway and Bastion Host.

The infrastructure is fully managed through Terraform state for consistency, repeatability, and version control.

🏗️ Architecture Components
🌐 Networking

VPC

Custom CIDR range

Subnets

1 Public Subnet

1 Private Subnet

Internet Gateway

Enables internet access for public resources

NAT Gateway

Allows outbound internet access for private instances

Elastic IP

Attached to NAT Gateway

🚦 Routing

Public Route Table

Route to Internet Gateway (0.0.0.0/0)

Private Route Table

Route to NAT Gateway (0.0.0.0/0)

Route table associations for both public and private subnets

🖥️ Compute

Bastion Host

EC2 instance deployed in the public subnet

Used for secure SSH access to private instances

Private EC2 Instance

Deployed in private subnet

No direct internet access

🔐 Security

Security Group

Controls inbound and outbound traffic

SSH access restricted via Bastion Host

📋 Terraform Resources Created

The following resources are managed in Terraform state:

aws_vpc.dev-vpc
aws_subnet.dev-public-subnet
aws_subnet.dev-private-subnet
aws_internet_gateway.dev-igw
aws_nat_gateway.dev-nat-gw
aws_eip.dev-eip
aws_route_table.dev-public-route-table
aws_route_table.dev-private-route-table
aws_route_table_association.dev-public-route-table-association
aws_route_table_association.dev-private-route-table-association
aws_instance.dev-bastion
aws_instance.dev-private-ec2
aws_security_group.dev-security-group

🚀 How to Deploy
Prerequisites

Terraform installed

AWS CLI configured with appropriate permissions

Steps
terraform init
terraform plan
terraform apply


To destroy the infrastructure:

terraform destroy

🧠 Design Highlights

Implements best-practice AWS networking

Uses NAT Gateway instead of public IPs for private EC2

Bastion Host pattern for secure access

Clear separation of public and private workloads

Fully reproducible using Infrastructure as Code (IaC)

🛠️ Terraform State Management

Terraform state tracks all infrastructure resources

Enables safe updates, predictable changes, and selective resource replacement

Supports future extension to remote backends (S3 + DynamoDB)

📌 Future Enhancements

Multi-AZ subnets for high availability

Remote backend (S3 + DynamoDB locking)

Auto Scaling Group for private EC2

VPC endpoints for AWS services

Modular Terraform structure

