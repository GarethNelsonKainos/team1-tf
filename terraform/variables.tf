variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "uksouth"
}

variable "environment" {
  description = "Deployment environment (dev/test/prod)"
  type        = string

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, prod."
  }
}

variable "acr_server" {
  description = "ACR login server URL"
  type        = string
  default     = "academyacrj3r5dv.azurecr.io"
}

variable "acr_resource_id" {
  description = "Resource ID of the ACR registry"
  type        = string
}

variable "db_name" {
  description = "Postgres database name"
  type        = string
  default     = "kainos-jobs"
}

variable "jwt_secret" {
  description = "JWT signing secret"
  type        = string
  sensitive   = true
}