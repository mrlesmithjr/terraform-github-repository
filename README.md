# Terraform GitHub Repository

Terraform module to manage GitHub repositories

## Requirements

### GitHub Personal Access Token

You will need to create a [GitHub Personal Access Token](https://github.com/settings/tokens) and the token must have `repo`, `admin:org`, and `delete_repo` permissions.

## Usage

```bash
module "repository" {
  source  = "mrlesmithjr/repository/github"
  version = "0.1.0"
  # insert the 2 required variables here
}
```

## Inputs

| Name             | Description                                                                        | Default | Required |
| ---------------- | ---------------------------------------------------------------------------------- | :-----: | :------: |
| github_token     | This is the GitHub personal access token                                           |    -    |   yes    |
| repo_auto_init   | Set to true to produce an initial commit in the repository                         |  false  |    no    |
| repo_description | A description of the repository                                                    |    -    |    no    |
| repo_has_issues  | Set to true to enable the GitHub Issues features on the repository                 |  true   |    no    |
| repo_has_wiki    | Set to true to enable the GitHub Wiki features on the repository                   |  true   |    no    |
| repo_name        | The name of the repository                                                         |    -    |   yes    |
| repo_private     | Set to true to create a private repository                                         |  false  |    no    |
| repo_visibility  | Can be public or private. The visibility parameter overrides the private parameter | private |    no    |

## Outputs

| Name           | Description                                                                                    |
| -------------- | ---------------------------------------------------------------------------------------------- |
| full_name      | A string of the form "orgname/reponame"                                                        |
| git_clone_url  | URL that can be provided to git clone to clone the repository anonymously via the git protocol |
| html_url       | URL to the repository on the web                                                               |
| http_clone_url | URL that can be provided to git clone to clone the repository via HTTPS                        |
| ssh_clone_url  | URL that can be provided to git clone to clone the repository via SSH                          |

## License

MIT

## Author Information

Larry Smith Jr.

- [@mrlesmithjr](https://twitter.com/mrlesmithjr)
- [mrlesmithjr@gmail.com](mailto:mrlesmithjr@gmail.com)
- [http://everythingshouldbevirtual.com](http://everythingshouldbevirtual.com)
