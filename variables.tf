# Repository
variable "owner" {
  description = "Owner name of repository"
  type        = string
}

variable "name" {
  description = "Repository name"
  type        = string
}

variable "description" {
  description = "Repository description"
  type        = string
  default     = ""
}

variable "pipelines_enabled" {
  description = "Weather enable pipelines or not"
  type        = bool
  default     = true
}

variable "slug" {
  description = "Repository slug"
  type        = string
  default     = ""
}

variable "is_private" {
  description = "Repository visibility"
  type        = bool
  default     = false
}

variable "website" {
  description = "Website url to bind to repository"
  type        = string
  default     = ""
}

variable "language" {
  description = "The main language of repository (Languages are supplied lowercase, f.e 'python', 'go')"
  type        = string
  default     = ""
}

variable "fork_policy" {
  description = "Fork Policy configuration for repository"
  type        = string
  default     = "allow_forks"
  validation {
    condition     = contains(["allow_forks", "no_forks", "no_public_forks"], var.fork_policy)
    error_message = "Invalid input, options: \"allow_forks\", \"no_forks\", \"no_public_forks\""
  }
}

variable "repository_variables" {
  description = "Repository wide variable to use in pipelines"
  type = list(object({
    name    = string
    value   = string
    secured = bool
  }))
  default = []
}

# Project
variable "create_project" {
  description = "Weather create project or not"
  type        = bool
  default     = false
}

variable "project" {
  description = "Project configuration"
  type = object({
    create     = bool
    name       = optional(string)
    key        = optional(string)
    is_private = optional(string)
  })
  default = ({
    create     = false
    key        = "untitled_project"
    name       = "Untitled project"
    is_private = false
  })
}

variable "deployments" {
  description = "Deployments configuration"
  type = list(object({
    name  = string
    stage = string
    variables = list(object({
      name    = string
      value   = string
      secured = bool
    }))
  }))
}


# Access Control
variable "restrictions" {
  description = "Restriction configuration"
  type = object({
    action = string
    branch = string
  })
  default = null
}
