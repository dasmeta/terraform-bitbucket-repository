# Repository
variable "owner" {
  type = string
}

variable "name" {
  type = string
}

variable "description" {
  type = string
  default = ""
}

variable "pipelines_enabled" {
  type = bool
  default = true
}

variable "slug" {
  type = string
  default = ""
}

variable "is_private" {
  type = bool
  default = false
}

variable "website" {
  type = string
  default = ""
}

variable "language" {
  description = "The main language of repository (Languages are supplied lowercase, f.e 'python', 'go')"
  type = string
  default = ""
}

variable "project_key" {
  type = string
  default = ""
}

variable "fork_policy" {
  type = string
  default = "allow_forks"
  validation {
    condition     = contains(["allow_forks", "no_forks", "no_public_forks"], var.fork_policy)
    error_message = "Invalid input, options: \"allow_forks\", \"no_forks\", \"no_public_forks\""
  }
}

# Project
variable "create_project" {
  type = bool
  default = false
}

variable "project" {
  type = object({
    create= bool
    name = optional(string)
    key = optional(string)
    is_private = optional(string)
  })
  default = ({
    create = false
    key = "untitled_project"
    name = "Untitled project"
    is_private = false
  })
}

variable "deployments" {
  type = list(object({
    name = string
    stage = string
    variables = map(any)
  }))
}

# Access Control
variable "restrictions" {
  type = object({
    action = string
    branch = string
  })
  default = null
}
