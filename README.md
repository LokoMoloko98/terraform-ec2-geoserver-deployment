# Terraform EC2 GeoServer Deployment

This repository contains Terraform code to provision an AWS EC2 instance specifically configured to host an instance of Kartoza's docker-geoserver implemetation. This repo serves mainly as a proof-of-concept. 

## Features

- Provision an EC2 instance on AWS
- Install and deploy Kartoza's docker-geoserver with a postgis backend.
- Setup necessary security groups and IAM roles

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with necessary permissions
- SSH key pair for EC2 access
- A Route53 managed domain

## Usage

1. **Clone the repository:**
    ```sh
    git clone https://github.com/yourusername/terraform-ec2-geoserver-deployment.git
    cd terraform-ec2-geoserver-deployment
    ```

2. **Initialize Terraform and connect it to your AWS backend:**
    ```sh
    terraform init
    ```

3. **Review and modify variables:**
    Make a copy of the `template.tfvars` and rename it to `terraform.tfvars` and provide the relevant values of the variables in that file to configure your AWS region, instance type, and other settings.


4. **Review the virtual infrastructure to be provisioned by producing a terraform plan:**

```sh
terraform plan
```

5. If you are satisfied with the plan, go ahead and provision the infrastructure:
```sh
terraform apply --auto-approve
```

6. **Access GeoServer:**
    Once the instance is provisioned and GeoServer is installed, you can access it via port ``8600`` of the public IP address or preferably the provided fqdn of the EC2 instance.

## Outputs

The following outputs are provided:

- `geoserver_node_instance_id`: The ID of the EC2 instance.
- `geoserver_node_ip`: The public IP address of the EC2 instance.
- `geoserver_node_url`: The URL to access GeoServer.

## Cleanup

To destroy the infrastructure created by this configuration:

```sh
terraform destroy
