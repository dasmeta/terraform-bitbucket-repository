resource "bitbucket_hook" "deploy_on_push" {
  owner       = "myteam"
  repository  = "terraform-code"
  url         = "https://mywebhookservice.mycompany.com/deploy-on-push"
  description = "Deploy the code via my webhook"

  events = [
    "repo:push",
  ]
}

