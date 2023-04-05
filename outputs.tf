output "repository_id" {
  value = bitbucket_repository.infrastructure.id
}

output "repository_name" {
  value = bitbucket_repository.infrastructure.name
}

output "deployment_variables" {
  value = module.deployments.variables
}
