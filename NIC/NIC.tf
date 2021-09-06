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
data "terraform_remote_state" "subnetID" {
    backend = "azurerm"

    config = {
        resource_group_name = "ResourceGroup-1"
        storage_account_name = "terraformstorageac1234"
        container_name = "terraform"
        key = "subnet.tfstate"
      
     }
  
}
resource "azurerm_network_interface" "NIC1" {
  name                = "networkinterface1"
  location            = "West Europe"
  resource_group_name = "ResourceGroup-1"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.terraform_remote_state.subnetID.outputs.DevSubnet
    private_ip_address_allocation = "Dynamic"
  }
}