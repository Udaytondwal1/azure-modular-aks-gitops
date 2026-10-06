variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
  default     = "rg-aks-prod"
}

variable "location" {
  description = "The Azure region where resources will be provisioned."
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry. Must be globally unique, alphanumeric only, 5-50 characters."
  type        = string
  default     = "acrprodaksdemo01"
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service (AKS) cluster."
  type        = string
  default     = "aks-prod-cluster"
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
  default     = "vnet-aks-prod"
}

variable "vnet_cidr" {
  description = "The address space CIDR block for the Virtual Network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "The name of the subnet for AKS nodes."
  type        = string
  default     = "snet-aks-nodes"
}

variable "subnet_cidr" {
  description = "The address prefix CIDR block for the AKS subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "node_count" {
  description = "The initial number of worker nodes in the AKS default node pool."
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "The VM size for the AKS default node pool nodes."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "os_disk_size_gb" {
  description = "The OS disk size in GB for AKS cluster nodes."
  type        = number
  default     = 30
}

variable "acr_sku" {
  description = "The SKU tier of the Container Registry (e.g., Basic, Standard, Premium)."
  type        = string
  default     = "Standard"
}

variable "service_cidr" {
  description = "CIDR range for Kubernetes services"
  type        = string
}

variable "dns_service_ip" {
  description = "IP address for the Kubernetes DNS service"
  type        = string
}

