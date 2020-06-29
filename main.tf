# Configure the GitHub Provider
provider "github" {
  individual   = var.github_individual
  token        = var.github_token
  organization = var.github_organization
  version      = "~> 2.8"
}

resource "github_repository" "repo" {
  auto_init   = var.repo_auto_init
  description = var.repo_description
  has_issues  = var.repo_has_issues
  has_wiki    = var.repo_has_wiki
  name        = var.repo_name
  private     = var.repo_private
}
