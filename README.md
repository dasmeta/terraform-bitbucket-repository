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
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_bitbucket"></a> [bitbucket](#requirement\_bitbucket) | 2.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_bitbucket"></a> [bitbucket](#provider\_bitbucket) | 2.31.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_deployments"></a> [deployments](#module\_deployments) | ./modules/deployments | n/a |

## Resources

| Name | Type |
|------|------|
| [bitbucket_branch_restriction.master](https://registry.terraform.io/providers/DrFaust92/bitbucket/2.31.0/docs/resources/branch_restriction) | resource |
| [bitbucket_project.this](https://registry.terraform.io/providers/DrFaust92/bitbucket/2.31.0/docs/resources/project) | resource |
| [bitbucket_repository.this](https://registry.terraform.io/providers/DrFaust92/bitbucket/2.31.0/docs/resources/repository) | resource |
| [bitbucket_repository_variable.this](https://registry.terraform.io/providers/DrFaust92/bitbucket/2.31.0/docs/resources/repository_variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_project"></a> [create\_project](#input\_create\_project) | Weather create project or not | `bool` | `false` | no |
| <a name="input_deployments"></a> [deployments](#input\_deployments) | Deployments configuration | <pre>list(object({<br>    name  = string<br>    stage = string<br>    variables = list(object({<br>      name    = string<br>      value   = string<br>      secured = bool<br>    }))<br>  }))</pre> | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Repository description | `string` | `""` | no |
| <a name="input_fork_policy"></a> [fork\_policy](#input\_fork\_policy) | Fork Policy configuration for repository | `string` | `"allow_forks"` | no |
| <a name="input_is_private"></a> [is\_private](#input\_is\_private) | Repository visibility | `bool` | `false` | no |
| <a name="input_language"></a> [language](#input\_language) | The main language of repository (Languages are supplied lowercase, f.e 'python', 'go') | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Repository name | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner name of repository | `string` | n/a | yes |
| <a name="input_pipelines_enabled"></a> [pipelines\_enabled](#input\_pipelines\_enabled) | Weather enable pipelines or not | `bool` | `true` | no |
| <a name="input_project"></a> [project](#input\_project) | Project configuration | <pre>object({<br>    create     = bool<br>    name       = optional(string)<br>    key        = optional(string)<br>    is_private = optional(string)<br>  })</pre> | <pre>{<br>  "create": false,<br>  "is_private": false,<br>  "key": "untitled_project",<br>  "name": "Untitled project"<br>}</pre> | no |
| <a name="input_repository_variables"></a> [repository\_variables](#input\_repository\_variables) | Repository wide variable to use in pipelines | <pre>list(object({<br>    name    = string<br>    value   = string<br>    secured = bool<br>  }))</pre> | `[]` | no |
| <a name="input_restrictions"></a> [restrictions](#input\_restrictions) | Restriction configuration | <pre>object({<br>    action = string<br>    branch = string<br>  })</pre> | `null` | no |
| <a name="input_slug"></a> [slug](#input\_slug) | Repository slug | `string` | `""` | no |
| <a name="input_website"></a> [website](#input\_website) | Website url to bind to repository | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deployment_variables"></a> [deployment\_variables](#output\_deployment\_variables) | n/a |
| <a name="output_repository_id"></a> [repository\_id](#output\_repository\_id) | n/a |
| <a name="output_repository_name"></a> [repository\_name](#output\_repository\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
