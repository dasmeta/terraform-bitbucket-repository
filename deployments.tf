module "deployments" {
  source        = "./modules/deployments"
  deployments   = var.deployments
  repository_id = bitbucket_repository.this.id
}
