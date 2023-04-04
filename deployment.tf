resource "bitbucket_repository" "monorepo" {
    owner = "gob"
    name = "illusions"
    pipelines_enabled = true
}
resource "bitbucket_deployment" "test" {
  repository = bitbucket_repository.monorepo.id
  name = "test"
  stage = "Test"
}
