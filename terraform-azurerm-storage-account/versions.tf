terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
      # version = "~> 4.0"
    }
  }

  required_version = ">= 1.0"
}