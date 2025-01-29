module "storage_account" {
  source = "./terraform-azurerm-storage-account"

  # Add any required variables for the module here
  resource_group_name      = azurerm_resource_group.storage.name
  location                 = azurerm_resource_group.storage.location
  storage_account_name     = format("entropydemo%s", random_integer.suffix.result)

  depends_on = [ azurerm_resource_group.storage ]
}

provider "azurerm" {
  storage_use_azuread        = true # prereq to using 'rbac' access model!
  features {
    key_vault {
      purge_soft_delete_on_destroy    = false
      recover_soft_deleted_key_vaults = false
    }
  }
}

resource "azurerm_resource_group" "storage" {
  location = "westus"
  name     = "entropy-demo-rg"
}

resource "random_integer" "suffix" {
  min = 1000
  max = 9999

  keepers = {
    randomness = azurerm_resource_group.storage.name
  }
}