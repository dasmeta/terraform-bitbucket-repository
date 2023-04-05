module "bitbucket" {
  source = "../"

  name = "Repository-terraformed"
  owner = "miandevops"
  description = "Repository description"
  website = "www.dasmeta.com"
  language = "python"
  fork_policy = "allow_forks"

  project = {
    create = true
    name = "Project1"
    key = "project1"
    is_private = false
  }

  restrictions = {
    action= "push"
    branch = "master"
  }

  deployments = [
    {
     name = "development1"
     stage = "Test"
     variables = {
       "key1" = ["value1", "secured"]
       "key2" = ["value2", "secured"]
     }
    }
  ]

  repository_variables = {
    key1 = ["value1", "secured"]
    key2 = ["value2"]
  }
}
