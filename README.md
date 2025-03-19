## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_databricks_workspace.databricks_workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace) | resource |
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databricks_workspace_name"></a> [databricks\_workspace\_name](#input\_databricks\_workspace\_name) | (Required) Specifies the name of the Databricks Workspace resource. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the supported Azure location where the resources will be created. Changing this forces new resources to be created. | `string` | n/a | yes |
| <a name="input_managed_resource_group_name"></a> [managed\_resource\_group\_name](#input\_managed\_resource\_group\_name) | (Optional) The name of the resource group where Azure should place the managed Databricks resources. Defaults to databricks-rg-<resource group name>. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | (Optional) Allow public access for accessing workspace. Set value to false to access workspace only via private link endpoint. Possible values include true or false. Defaults to true. | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the Resource Group in which the non-managed resources will exist. Changing this forces new resources to be created. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU (Stock Keeping Unit) to use for the Azure Databricks Workspace.<br/>Possible values:<br/>  - 'standard' : Standard tier for general use.<br/>  - 'premium'  : Premium tier with additional features.<br/>  - 'trial'    : Trial tier with limited features for testing.<br/><br/>**Note**: Downgrading from 'standard' or 'premium' to 'trial' will cause the resource to be recreated. | `string` | `"standard"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | (Optional) Default Databricks file storage account name. Defaults to a randomized name(e.g. dbstoragel6mfeghoe5kxu). Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_storage_account_sku_name"></a> [storage\_account\_sku\_name](#input\_storage\_account\_sku\_name) | The SKU (Stock Keeping Unit) for the Azure storage account, determining redundancy and performance.<br/><br/>Possible values:<br/>  - `Standard_LRS`   : Locally redundant storage.<br/>  - `Standard_GRS`   : Geo-redundant storage (default).<br/>  - `Standard_RAGRS` : Read-access geo-redundant storage.<br/>  - `Standard_GZRS`  : Zone-redundant storage with geo-replication.<br/>  - `Standard_RAGZRS`: Read-access geo-zone-redundant storage.<br/>  - `Standard_ZRS`   : Zone-redundant storage.<br/>  - `Premium_LRS`    : High-performance locally redundant storage.<br/>  - `Premium_ZRS`    : High-performance zone-redundant storage. | `string` | `"Standard_GRS"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resources. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_databricks_workspace_id"></a> [azure\_databricks\_workspace\_id](#output\_azure\_databricks\_workspace\_id) | The ID of the Databricks Workspace in the Azure management plane. |
| <a name="output_databricks_workspace_id"></a> [databricks\_workspace\_id](#output\_databricks\_workspace\_id) | The unique identifier of the databricks workspace in Databricks control plane. |
