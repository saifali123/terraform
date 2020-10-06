#Get Started Terraform - AWS

##Introduction to Terraform
[Introduction to Infrastructure as Code with Terraform](https://learn.hashicorp.com/tutorials/terraform/infrastructure-as-code)

##Install Terraform

[Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

##Build Infrastructure

[Build Infrastructure](https://learn.hashicorp.com/tutorials/terraform/aws-build)

Some Important commands used:

```shell script
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

## Input Variables

[Input Variables](https://learn.hashicorp.com/tutorials/terraform/aws-variables)

Usage of variables in the terraform script

## Query Data with Output Variables

[Query Data with Output Variables](https://learn.hashicorp.com/tutorials/terraform/aws-outputs)

To use the resource outputs for further queries.


# YouTube - freeCodeCamp.org

```shell script
terraform plan  #dryrun
```

* The terraform shell commands will display some signs such as +(create resource), -(delete resource) and ~(modify resource).

* If we want to get rid of typing "yes" for the `terraform apply`, use `--auto-approve` flag with `terraform apply`.  Such as this `terraform apply --auto-approve`  

* The declaration of resource sequence in terraform script does not matter. We can define any resource in the script first and reference its id when required, it does not matter. Because Terraform is intelligent enough to handle that behalf of us.

* The .terraform folder contains the provider information, the terraform creates that folder after executing `terraform init` command. If anytime the .terrform folder gets deleted, execute the `terraform init` command again for creating that folder

* The terraform.tfstate file stores the infrastructure status and resources state. Never mess with this file.