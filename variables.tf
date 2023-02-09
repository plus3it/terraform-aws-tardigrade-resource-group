variable "resource_group" {
  description = "Object of configuration attributes for the resource group"
  type = object({
    name        = string
    description = optional(string)

    resource_query = object({
      type = optional(string, "TAG_FILTERS_1_0")
      query = object({
        ResourceTypeFilters = optional(list(string), ["AWS::AllSupported"])
        TagFilters = list(object({
          Key    = string,
          Values = list(string)
        }))
      })
    })
  })

  validation {
    condition     = lower(var.resource_group.name) != "aws"
    error_message = "The resource_group.name must not begin with aws or AWS"
  }

  validation {
    condition = contains(
      ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"],
      var.resource_group.resource_query.type
    )
    error_message = "The resource_group.resource_query.type must be one of: TAG_FILTERS_1_O, CLOUDFORMATION_STACK_1_0"
  }
}
