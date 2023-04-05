module "deployments" {
  source = "./deployments"
  deployments = var.deployments
  repository_id = bitbucket_repository.infrastructure.id
}
