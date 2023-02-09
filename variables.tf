variable "resource_query" {
  type = object({
    ResourceTypeFilters = list(string)
    TagFilters = list(object({
      Key    = string,
      Values = list(string)
    }))
  })
}

variable "name" {
  type = string
  validation {
    condition     = lower(var.name) != "aws"
    error_message = "The resource_group_name must not begin with aws or AWS."
  }
}

variable "type" {
  type = string
  validation {
    condition     = var.type == "TAG_FILTERS_1_0" || var.type == "CLOUDFORMATION_STACK_1_0"
    error_message = "The resource_group_type must be TAG_FILTERS_1_O or CLOUDFORMATION_STACK_1_0."
  }
}

# variable "resource_group" {
#   description = "Defines the resource group to create"
#   type = object({
#     name = string
#     resource_query = object({
#       ResourceTypeFilters = list(string)
#       TagFilters = list(object({
#         Key    = string,
#         Values = list(string)
#       }))
#     })
#   })
#   default = {
#     name = "ec2_grouped_by_ami"
#     resource_query = {
#       ResourceTypeFilters = ["AWS::EC2::Instance", "AWS::S3::Bucket"]
#       TagFilters = [{
#         Key    = "some_tag_key"
#         Values = ["some_tag_value"]
#       }]
#     }
#   }
# }
