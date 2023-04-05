resource "bitbucket_repository_variable" "debug" {

  for_each = { for variable in var.repository_variables : variable.name => variable }

  key     = each.key
  value   = each.value.value
  secured = each.value.secured

  repository = bitbucket_repository.infrastructure.id
}
