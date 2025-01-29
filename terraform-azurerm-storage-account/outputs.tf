output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "primary_access_key" {
  value = azurerm_storage_account.example.primary_access_key
}