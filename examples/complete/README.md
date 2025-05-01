# import

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.117 |
| <a name="requirement_external"></a> [external](#requirement\_external) | ~>2.3 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_names"></a> [resource\_names](#module\_resource\_names) | terraform.registry.launch.nttdata.com/module_library/resource_name/launch | ~> 2.0 |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | terraform.registry.launch.nttdata.com/module_primitive/resource_group/azurerm | ~> 1.0 |
| <a name="module_user_managed_identity"></a> [user\_managed\_identity](#module\_user\_managed\_identity) | terraform.registry.launch.nttdata.com/module_primitive/user_managed_identity/azurerm | ~> 1.0 |
| <a name="module_federated_identity_credential"></a> [federated\_identity\_credential](#module\_federated\_identity\_credential) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_product_family"></a> [product\_family](#input\_product\_family) | (Required) Name of the product family for which the resource is created.<br>    Example: org\_name, department\_name. | `string` | `"dso"` | no |
| <a name="input_product_service"></a> [product\_service](#input\_product\_service) | (Required) Name of the product service for which the resource is created.<br>    For example, backend, frontend, middleware etc. | `string` | `"kube"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment in which the resource should be provisioned like dev, qa, prod etc. | `string` | `"dev"` | no |
| <a name="input_environment_number"></a> [environment\_number](#input\_environment\_number) | The environment count for the respective environment. Defaults to 000. Increments in value of 1 | `string` | `"000"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS Region in which the infra needs to be provisioned | `string` | `"eastus"` | no |
| <a name="input_resource_names_map"></a> [resource\_names\_map](#input\_resource\_names\_map) | A map of key to resource\_name that will be used by tf-launch-module\_library-resource\_name to generate resource names | <pre>map(object(<br>    {<br>      name       = string<br>      max_length = optional(number, 60)<br>    }<br>  ))</pre> | <pre>{<br>  "msi": {<br>    "max_length": 60,<br>    "name": "msi"<br>  },<br>  "rg": {<br>    "max_length": 60,<br>    "name": "rg"<br>  }<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the federated identity credential | `string` | n/a | yes |
| <a name="input_issuer"></a> [issuer](#input\_issuer) | The URL of the external identity provider | `string` | n/a | yes |
| <a name="input_subject"></a> [subject](#input\_subject) | The identifier of the external software workload within the external identity provider | `string` | n/a | yes |
| <a name="input_audience"></a> [audience](#input\_audience) | The audience as it appears in the external token.<br>Must be set to 'api://AzureADTokenExchange' to be exchanged for an Entra ID token. | `list(string)` | <pre>[<br>  "api://AzureADTokenExchange"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Custom tags for the Key vault | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_msi_name"></a> [msi\_name](#output\_msi\_name) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
