variable "resource_group_name" {
  description = "The name of the resource group in which to create the networking resources."
  type        = string
}

variable "location" {
  description = "The Azure region where the virtual network should be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "vnet-aks-prod"
}

variable "vnet_cidr" {
  description = "The address space CIDR block for the virtual network."
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
