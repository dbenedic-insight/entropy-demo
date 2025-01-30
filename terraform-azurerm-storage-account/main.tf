resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.tier
  account_replication_type = var.replication

  # deprecated in AzureRM provider 4.x
  enable_https_traffic_only = true

  # defaults to 'false' in AzureRM provider 4.x if unspecified
  # cross_tenant_replication_enabled = false
}