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
resource "bitbucket_deployment_variable" "country" {
  deployment = bitbucket_deployment.test.id
  name = "COUNTRY"
  value = "Kenya"
  secured = false
}
