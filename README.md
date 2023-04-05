# terraform-bitbucket-repository

BitBucket Credentials set

### Variant 1

Configure provider explicitly (Not Recommended)
```
provider "bitbucket" {
  username = "<username>"
  password = "<app-password>"
}
```
### Variant 2
Configure environment variables
```
export BITBUCKET_USERNAME=<username>
export BITBUCKET_PASSWORD=<app-password>
```

### Full Example
```
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
    },
    {
     name = "development2"
     stage = "Test"
     variables = {
       "key1" = ["value1", "secured"]
       "key2" = ["value2", "secured"]
     }
    },
  ]

  repository_variables = {
    key1 = ["value1", "secured"]
    key2 = ["value2"]
  }
}
```