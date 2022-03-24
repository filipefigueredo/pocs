variable "product" {
  description = "Name of the squad owner of the kitchen, just the name without word 'squad'"
  type        = string
  default     = "kitchen"
}

variable "squad" {
  description = "Name of the squad owner of the kitchen, just the name without word 'squad'"
  type        = string
  default     = "mobile"
}

variable "country" {
  description = "Name of the squad owner of the kitchen, just the name without word 'squad'"
  type        = string
  default     = "nl"
}

variable "tags" {
  type        = map(string)
  description = "list of nmbrs mandatory resource tags."
  default = {
    country     = "nl"
    squad       = "mobile"
    product     = "internal"
    environment = "kitchen"
  }
}

variable "location" {
  description = "Location of the resource"
  type        = string
  default     = "westeurope"
}

variable "environment" {
  type        = string
  description = "environment type of the apps"
  default     = "Kitchen"
}

variable "dotnetversion" {
  type        = string
  description = ".net version of the app service. v2.0, v4.0, v5.0 and v6.0 are possible values"
  default     = "v4.0"
}

variable "app_service_plan" {
  type        = map(any)
  description = "nmbrs web specifications."
  default = {
    "service" = "web"
    "size"    = "S1"
    "plan"    = "Standard"
  }
}

variable "apps" {
  description = "Type of app service to be created eg. worker, web, mobile, api"
  type        = map(any)
  default = {
    web = {
      name          = "web"
      subnet        = "/subscriptions/0abe1f07-d2a2-4c7a-a36c-9e91baa7321d/resourceGroups/rg-networks-dev/providers/Microsoft.Network/virtualNetworks/vnet-dev-westeu-001/subnets/snet-dev-westeu-kitchen-mobile-001"
      custom_domain = "*.nmbrs-dev009.com"
      record        = "as-mobile-web-kitchen"
      cname         = "*"
    }
    worker = {
      name          = "worker"
      subnet        = "/subscriptions/0abe1f07-d2a2-4c7a-a36c-9e91baa7321d/resourceGroups/rg-networks-dev/providers/Microsoft.Network/virtualNetworks/vnet-dev-westeu-001/subnets/snet-dev-westeu-kitchen-mobile-001"
      custom_domain = "worker.nmbrs-dev009.com"
      record        = "as-mobile-worker-kitchen"
      cname         = "worker"
    }
    mobile = {
      name          = "mobile"
      subnet        = "/subscriptions/0abe1f07-d2a2-4c7a-a36c-9e91baa7321d/resourceGroups/rg-networks-dev/providers/Microsoft.Network/virtualNetworks/vnet-dev-westeu-001/subnets/snet-dev-westeu-kitchen-mobile-001"
      custom_domain = "mobile.nmbrs-dev009.com"
      record        = "as-mobile-mobile-kitchen"
      cname         = "mobile"
    }
    api = {
      name          = "api"
      subnet        = "/subscriptions/0abe1f07-d2a2-4c7a-a36c-9e91baa7321d/resourceGroups/rg-networks-dev/providers/Microsoft.Network/virtualNetworks/vnet-dev-westeu-001/subnets/snet-dev-westeu-kitchen-mobile-001"
      custom_domain = "api.nmbrs-dev009.com"
      record        = "as-mobile-api-kitchen"
      cname         = "api"
    }
  }
}

variable "dns_zone" {
  description = "Name of the DNS zone"
  type        = string
  default     = "nmbrs-dev009.com"
}

variable "keyvault_name" {
  description = "Name of the key vault where the certificate is"
  type        = string
  default     = "KV-Nmbrs-Infra-test"
}

variable "certificate_name" {
  description = "Name of the certificate to bind"
  type        = string
  default     = "wildcard-nmbrs-dev009-com"
}
