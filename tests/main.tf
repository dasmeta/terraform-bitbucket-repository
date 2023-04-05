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

  deployments = [
    {
     name = "development1"
     stage = "Test"
     variables = {
       "key1" = "value1"
       "key2" = "value2"
     }
    },
    {
     name = "development2"
     stage = "Test"
     variables = {
       "key2" = "value2"
     }
    }
  ]
}
