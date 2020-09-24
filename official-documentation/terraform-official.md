#Get Started Terraform - AWS

##Introduction to Terraform
[Introduction to Infrastructure as Code with Terraform](https://learn.hashicorp.com/tutorials/terraform/infrastructure-as-code)

##Install Terraform

[Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

##Build Infrastructure

[Build Infrastructure](https://learn.hashicorp.com/tutorials/terraform/aws-build)

Some Important commands used:

```bash
terraform init        #to initialize the current directory
terraform fmt         #updates configurations for easy readability and consistency
terraform apply       #for creating infrastructure
terraform show        #to show the created resources
terraform state list  #to list the resources created
```

## Change Infrastructure

[Change Inftrastructure](https://learn.hashicorp.com/tutorials/terraform/aws-change)

Here we have changed EC2 instance AMI-Id in which it deletes the previous instance and recreates the new one.

## Destroy Infrastructure

[Destroy Infrastructure](https://learn.hashicorp.com/tutorials/terraform/aws-destroy)

To destroy the overall infrastructure `terraform destroy`