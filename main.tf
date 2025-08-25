terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# East US2 Firewall
resource "azurerm_template_deployment" "fw_eastus2" {
  name                = "checkpoint-fw-eastus2"
  resource_group_name = var.rg_eastus2
  deployment_mode     = "Incremental"

  template_body = file("${path.module}/checkpoint.json") # ARM template file
  parameters = {
    location            = var.location_eastus2
    vmName              = var.vmname_eastus2
    vnetName            = var.vnet_eastus2
    subnetBackendName   = var.subnet_backend_eastus2
    subnetFrontendName  = var.subnet_frontend_eastus2
    nsgName             = var.nsg_eastus2
    eth0PrivateIP       = var.eth0_private_ip_eastus2
    eth1PrivateIP       = var.eth1_private_ip_eastus2
	availabilityZone    = var.zone_eastus2
  }
}

# Central US Firewall
resource "azurerm_template_deployment" "fw_centralus" {
  name                = "checkpoint-fw-centralus"
  resource_group_name = var.rg_centralus
  deployment_mode     = "Incremental"

  template_body = file("${path.module}/checkpoint.json") # ARM template file
  parameters = {
    location            = var.location_centralus
    vmName              = var.vmname_centralus
    vnetName            = var.vnet_centralus
    subnetBackendName   = var.subnet_backend_centralus
    subnetFrontendName  = var.subnet_frontend_centralus
    nsgName             = var.nsg_centralus
    eth0PrivateIP       = var.eth0_private_ip_centralus
    eth1PrivateIP       = var.eth1_private_ip_centralus
	availabilityZone    = var.zone_centralus
  }
}
