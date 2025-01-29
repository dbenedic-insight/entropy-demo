# File: /terraform-azurerm-storage-account/terraform-azurerm-storage-account/README.md

# AzureRM Storage Account Module

This Terraform module deploys an AzureRM storage account using version 3.x of the AzureRM Terraform provider.

## Prerequisites

- Terraform 1.0 or later
- Azure account with appropriate permissions to create resources

## Usage

To use this module, include it in your Terraform configuration as follows:

```hcl
module "storage_account" {
  source              = "./terraform-azurerm-storage-account"
  storage_account_name = "your_storage_account_name"
  location            = "East US"
  sku                 = "Standard_LRS"
}
```

## Inputs

| Name                     | Description                          | Type   | Default | Required |
|--------------------------|--------------------------------------|--------|---------|:--------:|
| storage_account_name     | The name of the storage account      | string | n/a     |   yes    |
| location                 | The Azure region to deploy the account | string | n/a     |   yes    |
| sku                      | The SKU of the storage account       | string | "Standard_LRS" | no |

## Outputs

| Name                     | Description                          |
|--------------------------|--------------------------------------|
| storage_account_id       | The ID of the storage account        |
| primary_access_key       | The primary access key of the storage account |

## Testing

To run tests for this module, navigate to the `test` directory and execute:

```bash
terraform init
terraform apply
```

Ensure that the resources are created and destroyed as expected.

## License

This module is licensed under the MIT License. See the LICENSE file for more details.