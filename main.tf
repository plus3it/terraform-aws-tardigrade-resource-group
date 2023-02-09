resource "aws_resourcegroups_group" "this" {
  name = var.name

  resource_query {
    query = jsonencode(var.resource_query)
    type  = var.type

  }
}
