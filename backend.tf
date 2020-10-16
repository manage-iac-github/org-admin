# add the terraform cloud backend for running locally
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "terraform-cloud-github-organization-mgmt"
    workspaces {
      name = "github-org-management-admin-TC"
    }
  }
}