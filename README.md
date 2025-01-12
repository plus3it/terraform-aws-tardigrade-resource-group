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
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Object of configuration attributes for the resource group | <pre>object({<br/>    name        = string<br/>    description = optional(string)<br/><br/>    resource_query = object({<br/>      type = optional(string, "TAG_FILTERS_1_0")<br/>      query = object({<br/>        ResourceTypeFilters = optional(list(string), ["AWS::AllSupported"])<br/>        TagFilters = list(object({<br/>          Key    = string,<br/>          Values = list(string)<br/>        }))<br/>      })<br/>    })<br/>  })</pre> | n/a | yes |

## Outputs

No outputs.

<!-- END TFDOCS -->
