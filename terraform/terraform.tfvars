resource_group_name = "rg-aks-prod"
location            = "eastus"

acr_name = "acrprodaksdemo01"
acr_sku  = "Standard"

aks_name = "aks-prod-cluster"

vnet_name = "vnet-aks-prod"
vnet_cidr = "10.0.0.0/16"

subnet_name = "snet-aks-nodes"
subnet_cidr = "10.0.1.0/24"

node_count      = 2
vm_size         = "Standard_D2ads_v7"
os_disk_size_gb = 30

service_cidr   = "10.1.0.0/16"
dns_service_ip = "10.1.0.10"
