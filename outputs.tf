output "azure_databricks_workspace_id" {
  value = azurerm_databricks_workspace.databricks_workspace.id
}

output "databricks_workspace_id" {
  value = azurerm_databricks_workspace.databricks_workspace.workspace_id
}