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

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}
