# East US2 Firewall Outputs
output "fw_eastus2_outputs" {
  value = azurerm_template_deployment.fw_eastus2.output_content
}

output "fw_eastus2_private_ip" {
  value = lookup(azurerm_template_deployment.fw_eastus2.output_content, "privateIpAddress", null)
}

output "fw_eastus2_public_ip" {
  value = lookup(azurerm_template_deployment.fw_eastus2.output_content, "publicIpAddress", null)
}

# Central US Firewall Outputs
output "fw_centralus_outputs" {
  value = azurerm_template_deployment.fw_centralus.output_content
}

output "fw_centralus_private_ip" {
  value = lookup(azurerm_template_deployment.fw_centralus.output_content, "privateIpAddress", null)
}

output "fw_centralus_public_ip" {
  value = lookup(azurerm_template_deployment.fw_centralus.output_content, "publicIpAddress", null)
}
