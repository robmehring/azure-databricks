output "azure_databricks_workspace_id" {
  description = "The ID of the Databricks Workspace in the Azure management plane."
  value       = azurerm_databricks_workspace.databricks_workspace.id
}

output "databricks_workspace_id" {
  description = "The unique identifier of the databricks workspace in Databricks control plane."
  value       = azurerm_databricks_workspace.databricks_workspace.workspace_id
}