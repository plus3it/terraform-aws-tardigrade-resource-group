resource "aws_resourcegroups_group" "this" {
  name        = var.resource_group.name
  description = var.resource_group.description

  resource_query {
    query = jsonencode(var.resource_group.resource_query.query)
    type  = var.resource_group.resource_query.type
  }
}
