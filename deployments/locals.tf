locals {
  variables_flat = flatten([
  for deploy in var.deployments : [
  for key, value in deploy.variables : {
    deploy : deploy.name
    variable : {
      key : key,
      value : value
    }
  }
  ]
  ])
}
