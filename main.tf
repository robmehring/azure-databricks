resource "azurerm_resource_group" "resource_group" {
  location = var.location
  name     = var.resource_group_name
  tags     = var.tags
}

resource "azurerm_databricks_workspace" "databricks_workspace" {
  location            = azurerm_resource_group.resource_group.location
  name                = var.databricks_workspace_name
  resource_group_name = azurerm_resource_group.resource_group.name
  sku                 = var.sku
  tags                = var.tags
}