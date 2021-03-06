## Terraform resource group
=============================================================================================================================
* Use "terraform init" to initialize the terraform resources.
* To create resource, we should use "terraform plan" and "terraform apply" command.
* To destroy the resource, use "terraform destroy" command.
* Never ever share .tfstate file, it contains sensitive information.
* Terraform interpolation using resource group and virtual network
* "terraform apply -auto-approve" command should be used if we want to create resource without asking for the confirmation.
*  Variables Interpolation using Subnets by use of keyword "var".
* Locals Interpolation using AVSET(Availability Set) {use of locals and local variable}
* Terraform tfstate file stored in azure storage account so that our information can be kept secret.
* Terraform output block
* Terraform data block to fetch data from tfstate file
* Terraform virtual machine creation
