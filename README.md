# terraform-aws-tardigrade-resource-group

<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_resource_query"></a> [resource\_query](#input\_resource\_query) | n/a | <pre>object({<br>    ResourceTypeFilters = list(string)<br>    TagFilters = list(object({<br>      Key    = string,<br>      Values = list(string)<br>    }))<br>  })</pre> | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | n/a | `string` | n/a | yes |

## Outputs

No outputs.

<!-- END TFDOCS -->
