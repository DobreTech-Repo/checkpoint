subscription_id = "m-ingress-01"

# East US2 Firewall
location_eastus2          = "East US2"
rg_eastus2                = "m-FWP-1rsg-Firewall-02"
vnet_eastus2              = "m-CL1-1vnt-ingress-01"
subnet_backend_eastus2    = "m-FWP-1snt-IngressInside-01"
subnet_frontend_eastus2   = "m-FWP-1snt-IngressOutside-01"
nsg_eastus2               = "m-FWP-1nsg-FirewallInside-01"
vmname_eastus2            = "mfwpvmaze2ingressngfwB"
eth0_private_ip_eastus2   = "10.212.125.132"
eth1_private_ip_eastus2   = "10.212.125.5"

# Central US Firewall
location_centralus        = "Central US"
rg_centralus              = "m-FWP-11rsg-Firewall-02"
vnet_centralus            = "m-CL1-11vnt-ingress-01"
subnet_backend_centralus  = "m-FWP-11snt-IngressInside-01"
subnet_frontend_centralus = "m-FWP-11snt-IngressOutside-01"
nsg_centralus             = "m-FWP-11nsg-FirewallInside-01"
vmname_centralus          = "mfwpvmazc1ingressngfwB"
eth0_private_ip_centralus = "10.214.33.133"
eth1_private_ip_centralus = "10.214.33.5"
