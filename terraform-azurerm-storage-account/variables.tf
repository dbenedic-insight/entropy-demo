variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the storage account will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account. Must be between 3 and 24 characters and can contain only lowercase letters and numbers."
  type        = string
}

variable "tier" {
  description = "The account tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "replication" {
  description = "The replitcation type of storage account."
  type        = string
  default     = "LRS"
}