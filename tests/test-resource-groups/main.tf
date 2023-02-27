module "resource_group" {
  source = "../.."
  name   = local.name
  type   = local.type

  resource_query = {
    ResourceTypeFilters = local.query.ResourceTypeFilters
    TagFilters          = local.query.TagFilters
  }
}

locals {
  name = "ec2_grouped_by_something"
  type = "TAG_FILTERS_1_0"
  query = {
    ResourceTypeFilters = ["AWS::EC2::Instance", "AWS::S3::Bucket"]
    TagFilters = [{
      Key    = "some_tag_key"
      Values = ["some_tag_value"]
      }
    ]
  }
}
