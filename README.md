# Entropy Demo
## Description
Simplified repository to illustrate the challenges with maintaining an automation codebase due to constant changes in the hyperscaler APIs.
## Setup
1. Install Azure CLI and login to your Azure tenant with `azure login`
1. Install Terraform CLI e.g. `brew install terraform`
## Demo
1. Init Terraform from the top-level directory of this repo `terraform init`
1. Apply Terraform to create storage account using AzureRM provider v3.x.x `terraform apply -auto-approve`
1. Upgrade AzureRM provider to 4.x.x by uncommenting versions.tf line 6 and commenting out version 3.x.x
1. Run a second Terraform Apply and note the error caused by the storage account property that was deprecated
## Test Procedure