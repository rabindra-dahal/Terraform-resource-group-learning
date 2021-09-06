terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "ResourceGroup-1"
    storage_account_name = "terraformstorageac1234"
    container_name = "terraform"
    key = "AVSET.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
}
locals{
    location = "EastUS"
    ResourceGroup = "ResourceGroup-1"
    updateDomain = 6
    faultDomain = 2
}
resource "azurerm_availability_set" "AVSET1" {
  name                = "AvailabilitySet1"
  location            = local.location
  resource_group_name = local.ResourceGroup

  tags = {
    environment = "Production"
  }
  platform_update_domain_count = local.updateDomain
  platform_fault_domain_count = local.faultDomain
}
resource "azurerm_availability_set" "AVSET2" {
  name                = "AvailabilitySet2"
  location            = local.location
  resource_group_name = local.ResourceGroup

  tags = {
    environment = "Dev"
  }
  platform_update_domain_count = local.updateDomain
  platform_fault_domain_count = local.faultDomain
}
resource "azurerm_availability_set" "AVSET3" {
  name                = "AvailabilitySet3"
  location            = local.location
  resource_group_name = local.ResourceGroup

  tags = {
    environment = "Stakeholders"
  }
  platform_update_domain_count = local.updateDomain
  platform_fault_domain_count = local.faultDomain
}
resource "azurerm_availability_set" "AVSET4" {
  name                = "AvailabilitySet4"
  location            = local.location
  resource_group_name = local.ResourceGroup

  tags = {
    environment = "Financer"
  }
  platform_update_domain_count = local.updateDomain
  platform_fault_domain_count = local.faultDomain
}

resource "azurerm_availability_set" "AVSET5" {
  name                = "AvailabilitySet5"
  location            = local.location
  resource_group_name = local.ResourceGroup

  tags = {
    environment = "Corporator"
  }
  platform_update_domain_count = local.updateDomain
  platform_fault_domain_count = local.faultDomain
}
