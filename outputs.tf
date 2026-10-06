output "resource_group_name" {
  description = "Nombre del grupo de recursos."
  value       = azurerm_resource_group.qa.name
}

output "log_analytics_workspace_name" {
  description = "Nombre del espacio de trabajo de Log Analytics."
  value       = azurerm_log_analytics_workspace.qa.name
}

output "application_insights_name" {
  description = "Nombre de Application Insights."
  value       = azurerm_application_insights.qa.name
}

output "service_plan_name" {
  description = "Nombre del App Service Plan."
  value       = azurerm_service_plan.qa.name
}

output "web_app_name" {
  description = "Nombre global de la Web App."
  value       = azurerm_linux_web_app.qa.name
}

output "web_app_default_hostname" {
  description = "Hostname predeterminado de la Web App."
  value       = azurerm_linux_web_app.qa.default_hostname
}

output "web_app_url" {
  description = "URL HTTPS de la Web App."
  value       = "https://${azurerm_linux_web_app.qa.default_hostname}"
}
