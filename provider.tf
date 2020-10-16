# Configure the GitHub Provider
provider "github" {
  version      = "~> 2.2"
  organization = "manage-iac-github"
  # Set GITHUB_TOKEN as an environment variable
}