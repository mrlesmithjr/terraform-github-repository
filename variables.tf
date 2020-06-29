variable "github_individual" {
  type        = bool
  description = "Run outside an organization. When individual is true, the provider will run outside the scope of an organization."
  default     = false
}

variable "github_organization" {
  type        = string
  description = "This is the target GitHub organization to manage"
  default     = ""
}

variable "repo_auto_init" {
  type        = bool
  description = "Set to true to produce an initial commit in the repository"
  default     = false
}

variable "repo_description" {
  type        = string
  description = "A description of the repository"
  default     = ""
}

variable "repo_has_issues" {
  type        = bool
  description = "Set to true to enable the GitHub Issues features on the repository"
  default     = true
}

variable "repo_has_wiki" {
  type        = bool
  description = "Set to true to enable the GitHub Wiki features on the repository"
  default     = true
}

variable "repo_name" {
  type        = string
  description = "The name of the repository."
}

variable "repo_private" {
  type        = bool
  description = "Set to true to create a private repository"
  default     = false
}

variable "github_token" {
  type        = string
  description = "This is the GitHub personal access token"
}
