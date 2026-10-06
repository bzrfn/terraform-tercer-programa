variable "subscription_id" {
  description = "Identificador de la suscripción de Azure. Se proporciona mediante TF_VAR_subscription_id."
  type        = string
  sensitive   = true

  validation {
    condition     = can(regex("^[0-9a-fA-F-]{36}$", var.subscription_id))
    error_message = "subscription_id debe tener el formato de un UUID de Azure."
  }
}

variable "project_name" {
  description = "Nombre corto del proyecto usado en la nomenclatura de recursos."
  type        = string
  default     = "brandonlab-terraform"
}

variable "environment" {
  description = "Entorno de despliegue."
  type        = string
  default     = "qa"
}

variable "location" {
  description = "Región de Azure permitida por la política de la suscripción."
  type        = string
  default     = "chilecentral"
}

variable "instance" {
  description = "Número de instancia usado en los nombres."
  type        = string
  default     = "001"
}

variable "service_plan_sku_name" {
  description = "SKU del App Service Plan. F1 corresponde al nivel gratuito."
  type        = string
  default     = "F1"
}

variable "application_type" {
  description = "Tipo de aplicación para Application Insights."
  type        = string
  default     = "web"
}

variable "node_version" {
  description = "Versión de Node.js para la Web App Linux."
  type        = string
  default     = "24-lts"
}

variable "log_analytics_sku" {
  description = "SKU del espacio de trabajo de Log Analytics."
  type        = string
  default     = "PerGB2018"
}

variable "tags" {
  description = "Etiquetas adicionales para los recursos."
  type        = map(string)
  default = {
    Owner     = "Brandon Bernal"
    ManagedBy = "Terraform"
  }
}
