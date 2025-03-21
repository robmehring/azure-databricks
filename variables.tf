variable "databricks_workspace_name" {
  description = "(Required) Specifies the name of the Databricks Workspace resource. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resources will be created. Changing this forces new resources to be created."
  type        = string
}

variable "managed_resource_group_name" {
  description = "(Optional) The name of the resource group where Azure should place the managed Databricks resources. Defaults to databricks-rg-<resource group name>. Changing this forces a new resource to be created."
  default     = null
  type        = string
}

variable "public_network_access_enabled" {
  description = "(Optional) Allow public access for accessing workspace. Set value to false to access workspace only via private link endpoint. Possible values include true or false. Defaults to true."
  default     = true
}

variable "resource_group_name" {
  description = "(Required) The name of the Resource Group in which the non-managed resources will exist. Changing this forces new resources to be created."
  type        = string
}

variable "sku" {
  type        = string
  default     = "standard"
  description = <<EOT
The SKU (Stock Keeping Unit) to use for the Azure Databricks Workspace.
Possible values:
  - 'standard' : Standard tier for general use.
  - 'premium'  : Premium tier with additional features.
  - 'trial'    : Trial tier with limited features for testing.

**Note**: Downgrading from 'standard' or 'premium' to 'trial' will cause the resource to be recreated.
EOT
}

variable "storage_account_name" {
  default     = null
  description = "(Optional) Default Databricks file storage account name. Defaults to a randomized name(e.g. dbstoragel6mfeghoe5kxu). Changing this forces a new resource to be created."
  type        = string
}

variable "storage_account_sku_name" {
  default     = "Standard_GRS"
  description = <<EOT
The SKU (Stock Keeping Unit) for the Azure storage account, determining redundancy and performance.

Possible values:
  - `Standard_LRS`   : Locally redundant storage.
  - `Standard_GRS`   : Geo-redundant storage (default).
  - `Standard_RAGRS` : Read-access geo-redundant storage.
  - `Standard_GZRS`  : Zone-redundant storage with geo-replication.
  - `Standard_RAGZRS`: Read-access geo-zone-redundant storage.
  - `Standard_ZRS`   : Zone-redundant storage.
  - `Premium_LRS`    : High-performance locally redundant storage.
  - `Premium_ZRS`    : High-performance zone-redundant storage.
EOT
  type        = string
}

variable "tags" {
  default     = null
  description = "(Optional) A mapping of tags to assign to the resources."
  type        = map(string)
}