resource "bitbucket_branch_restriction" "master" {
  count = var.restrictions != null ? 1 : 0
  owner      = var.owner
  repository = bitbucket_repository.infrastructure.name

  kind = var.restrictions.action
  pattern = var.restrictions.branch
}
