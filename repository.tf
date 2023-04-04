resource "bitbucket_repository" "infrastructure" {
  owner = var.owner
  name  = var.name
  description = var.description
  pipelines_enabled = var.pipelines_enabled
  slug = var.slug
  is_private = var.is_private
  website = var.website
  language = var.language
  has_issues = var.has_issues
  has_wiki = var.has_wiki
  project_key = var.project_key
  fork_policy = var.fork_policy
}
