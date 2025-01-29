resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags
}

output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "primary_access_key" {
  value = azurerm_storage_account.example.primary_access_key
}