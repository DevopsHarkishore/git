terraform {
  backend "azurerm" {
    resource_group_name = "Apple"
  tenant_id            = "01508a98-a05e-4d26-a88f-c9eef9040f8a" # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
    storage_account_name = "30marterraformautomation"             # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "arundemo"                             # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "arunclass2"                           # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0cb6bac0-cbdd-4504-8e3e-4df9e0e800af"
}

resource "azurerm_resource_group" "Orange" {
  name     = "Orage-RG"
  location = "East US"
}

resource "azurerm_resource_group" "Orange121" {
  name     = "Orange121-RG"
  location = "East US"
}

resource "azurerm_resource_group" "Orange12" {
  name     = "Orange12-RG"
  location = "East US"
}

resource "azurerm_resource_group" "Orange123" {
  name     = "Orange123-RG"
  location = "East US"
}
