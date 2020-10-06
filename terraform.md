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

* To list all resources that are created by terraform script use `terraform state list` command. To get the details for any particular resource use `terraform state show "state-resource-name"`

* To delete just the particular resource from the terraform script, use `terraform destroy -target aws_resourcename.terraform-resource-name` command

* To relaunch the particular resource again in the infrastructure, use `terraform apply -target -target aws_resourcename.terraform-resource-name` command

* To refresh the terraform state, use `terraform refresh` command

* To provide some inputs on terminals after `terraform apply`, use variables as specified in [main.tf](./youtube/main.tf). The default variable file is [variable file](./youtube/terraform.tfvars)

* If we need to provide only input or type the string character manually on the terminal for the variable, then use `type = string` in the variable block, which is shown is this file [main.tf](./youtube/main.tf) 1st Way

* If we need to specify the list of variables in the variables file which is also shown in the [variable file](./youtube/terraform.tfvars). Also check the [main.tf](./youtube/main.tf) how we have used the list variables for the subnets cidr. 2nd Way

* If we need to use both strings and list at the same type for same variable see 3rd Way in both [variable file](./youtube/terraform.tfvars) [main.tf](./youtube/main.tf) 

* To provide variables while executing `terraform apply`, use `terraform apply -var "subnet-cidr=10.0.1.0/24"`

* To provide our custom variable file, provide variable flag while executing the `terraform apply` command. Such as 
`terraform apply -var-file "custom-var-file"`

