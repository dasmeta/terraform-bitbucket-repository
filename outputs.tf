output "repository_id" {
  value = bitbucket_repository.this.id
}

output "repository_name" {
  value = bitbucket_repository.this.name
}

output "deployment_variables" {
  value = module.deployments.variables
}
