resource "bitbucket_branch_restriction" "master" {
  count      = var.restrictions != null ? 1 : 0
  owner      = var.owner
  repository = bitbucket_repository.this.name

  kind    = var.restrictions.action
  pattern = var.restrictions.branch
}
