# Terraform module to manage repository `Deployments`

## About

---
Deployment is environment which has its own variables to use in pipelines

## Provider configuration

---
```hcl
terraform {
  required_providers {
    bitbucket = {
      source  = "DrFaust92/bitbucket"
      version = "2.30.2"
    }
  }
}
```
## Usage

---
```hcl
module "deployments" {
  
  source = "./deployments"
  deployments = local.deployments
  repository_id = "my-repository-xxxx-id"
  
}

locals {
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
     name = "development1"
     stage = "Test"
     variables = {
       "key1" = ["value1", "secured"]
       "key2" = ["value2"]
     }
    }
    
  ]
}
```
