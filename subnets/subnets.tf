terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.75.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
}

resource "azurerm_subnet" "subnet1" {
  name                 = "Prod"
  resource_group_name  = var.RGName
  virtual_network_name = var.VNETName
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "Dev"
  resource_group_name  = var.RGName
  virtual_network_name = var.VNETName
  address_prefixes     = ["10.0.2.0/24"]
}