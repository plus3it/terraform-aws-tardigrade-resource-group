module "resource_group" {
  source = "../.."
  resource_group = {
    name = local.name

    resource_query = {
      type  = local.type
      query = local.query
    }
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
