resource "bitbucket_repository" "this" {
  depends_on        = [bitbucket_project.devops]
  owner             = var.owner
  name              = var.name
  description       = var.description != "" ? var.description : null
  pipelines_enabled = var.pipelines_enabled
  slug              = var.slug != "" ? var.slug : null
  is_private        = var.is_private
  website           = var.website != "" ? var.website : null
  language          = var.language != "" ? var.language : null
  project_key       = var.project.key
  fork_policy       = var.fork_policy != "" ? var.fork_policy : null
}

resource "bitbucket_project" "devops" {
  count      = var.project.create ? 1 : 0
  owner      = var.owner
  name       = var.project.name
  key        = var.project.key
  is_private = var.project.is_private
}
