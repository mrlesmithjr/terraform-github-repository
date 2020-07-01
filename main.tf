# Configure the GitHub Provider
provider "github" {
  token   = var.github_token
  version = "~> 2.9"
}

resource "github_repository" "repo" {
  auto_init   = var.repo_auto_init
  description = var.repo_description
  has_issues  = var.repo_has_issues
  has_wiki    = var.repo_has_wiki
  name        = var.repo_name
  visibility  = var.repo_visibility
}
