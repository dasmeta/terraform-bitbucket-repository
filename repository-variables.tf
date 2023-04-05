resource "bitbucket_repository_variable" "debug" {

    for_each = var.repository_variables != {} ? var.repository_variables : {}

    key = each.key
    value = each.value[0]
    secured = try(each.value[1], false) == "secured" ? true : false

    repository = bitbucket_repository.infrastructure.id
}



locals {
  repository_variables = {
    key1 = ["value1", "secured"]
    key2 = ["value2"]
  }
}