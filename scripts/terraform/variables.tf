variable "resource_group_name" {
  default = "task9-rg"
}

variable "location" {
  default = "West Europe"
}

variable "acr_name" {
  default = "task9"
}

variable "aks_name" {
  default = "task9"
}

variable "dns_prefix" {
  default = "your-aks-dns-prefix"
}

variable "client_id" {
  description = "Azure client ID"
  type        = string
  default     = ""
}

variable "client_secret" {
  description = "Azure client secret"
  type        = string
  default     = ""
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = ""
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
  default     = ""
}
