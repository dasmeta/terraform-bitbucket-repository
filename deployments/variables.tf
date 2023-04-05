variable "deployments" {
  type = list(object({
    name = string
    stage = string
    variables = map(any)
  }))
}

variable "repository_id" {
  type = string
}
