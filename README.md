# Terraform module for BitBucket

## About

Terraform module to manage BitBucket repositories and its resources

### Provider configuration

---
```
terraform {
  required_providers {
    bitbucket = {
      source  = "DrFaust92/bitbucket"
      version = "2.30.2"
    }
  }
}
```

BitBucket Credentials set

 - ### Variant 1

Configure provider explicitly (Not Recommended)
```
provider "bitbucket" {
  username = "<username>"
  password = "<app-password>"
}
```
 - ### Variant 2
Configure environment variables
```
export BITBUCKET_USERNAME=<username>
export BITBUCKET_PASSWORD=<app-password>
```

## Examples
#### Full Example

---
```
module "bitbucket" {
  source = "../"

  name = "Repository-terraformed"
  owner = "DevOps"
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
       "key1" = ["value1"]
       "key2" = ["value2", "secured"]
     }
    },
    {
     name = "development2"
     stage = "Test"
     variables = {
       "key1" = ["value1", "secured"]
       "key2" = ["value2"]
     }
    },
  ]

  repository_variables = {
    key1 = ["value1", "secured"]
    key2 = ["value2"]
  }
}
```

### Example without creation of project

---
```
module "bitbucket" {
  source = "../"

  name = "Repository-terraformed"
  owner = "DevOps"
  description = "Repository description"

  project = {
    create = false
    key = "project1"
  }
}
```

### Example minimal

---
(if you don't specify project name, "untitled_project" will be created automatically)
```
module "bitbucket" {
  source = "../"

  name = "Repository-terraformed"
  owner = "DevOps"
}
```