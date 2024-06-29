# Terraform EC2 GeoServer Deployment

This repository contains Terraform code to provision an AWS EC2 instance specifically configured to host GeoServer. 

## Features

- Provision an EC2 instance on AWS
- Install and configure GeoServer
- Setup necessary security groups and IAM roles

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with necessary permissions
- SSH key pair for EC2 access

## Usage

1. **Clone the repository:**
    ```sh
    git clone https://github.com/yourusername/terraform-ec2-geoserver-deployment.git
    cd terraform-ec2-geoserver-deployment
    ```

2. **Initialize Terraform:**
    ```sh
    terraform init
    ```

3. **Review and modify variables:**
    - Edit `variables.tf` to configure your AWS region, instance type, and other settings.

4. **Apply the Terraform configuration:**
    ```sh
    terraform apply
    ```

5. **Access GeoServer:**
    - Once the instance is provisioned and GeoServer is installed, you can access it via the public IP address of the EC2 instance.

## Variables

The following variables can be configured in the `variables.tf` file:

- `aws_region`: The AWS region to deploy the instance.
- `instance_type`: The type of EC2 instance.
- `key_name`: The name of the SSH key pair for accessing the instance.
- `geoserver_version`: The version of GeoServer to install.

## Outputs

The following outputs are provided:

- `instance_id`: The ID of the EC2 instance.
- `public_ip`: The public IP address of the EC2 instance.
- `geoserver_url`: The URL to access GeoServer.

## Cleanup

To destroy the infrastructure created by this configuration:

```sh
terraform destroy
