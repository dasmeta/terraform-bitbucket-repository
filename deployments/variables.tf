variable "deployments" {
  type = list(object({
    name = string
    stage = string
    variables = map(string)
  }))
}

variable "repository_id" {
  type = string
}
