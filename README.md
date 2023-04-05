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

existing project
  project = {
    create = false
    key = "PROJ2"
  }

create projct
  project = {
    create = true
    name = "Project1"
    key = "project1"
    is_private = false
  }