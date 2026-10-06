variable "resource_group_name" {
  description = "The name of the resource group in which to create the ACR and AKS cluster."
  type        = string
}

variable "location" {
  description = "The Azure region where resources should be created."
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry. Must be globally unique, alphanumeric only."
  type        = string
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the AKS node pool should be hosted."
  type        = string
}

variable "acr_sku" {
  description = "The SKU tier of the Container Registry (e.g., Basic, Standard, Premium)."
  type        = string
  default     = "Standard"
}

variable "acr_admin_enabled" {
  description = "Whether the ACR admin user is enabled."
  type        = bool
  default     = false
}

variable "node_count" {
  description = "The initial number of nodes in the AKS default node pool."
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "The VM size for the AKS default node pool."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "os_disk_size_gb" {
  description = "The OS disk size in GB for AKS agent nodes."
  type        = number
  default     = 30
}


variable "service_cidr" {
  type = string
}

variable "dns_service_ip" {
  type = string
}
