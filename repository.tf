# the terraform resource for the repository
resource "github_repository" "org_admin" {
  name        = "org-admin"
  description = "Code that controls the overall organisation and base set up"

  private                = false
  has_issues             = true
  has_wiki               = false
  allow_merge_commit     = true
  allow_squash_merge     = false
  allow_rebase_merge     = false
  auto_init              = false
  delete_branch_on_merge = true
  topics                 = ["config", "terraform", "admin"]
  default_branch         = "main"
}

# Set up baseline configs for the repo
/*resource "github_branch_protection" "org_admin" {
  repository = github_repository.org_admin.name
  branch     = "main"

  required_status_checks {
    strict = false
  }
  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_code_owner_reviews = false
  }
}

resource "github_team_repository" "org_admin" {
  team_id    = github_team.team1.id
  repository = github_repository.org_admin.name
  permission = "admin"
}*/
/*================ Org Memberships =====================================================*/
/*resource "github_membership" "org_admin" {
  username = "Chandu2105"
  role     = "admin"
}

resource "github_membership" "team_member" {
  username = "sekhar2105"
  role     = "member"
}*/
/*================== Teams & Team-Memberships =========================================*/

/*resource "github_team" "team1" {
  name        = "team1"
  description = "Team responsible for making magic happen"
  privacy     = "closed"
}

resource "github_team_membership" "team1" {
  team_id  = github_team.team1.id
  username = github_membership.org_admin.username
  role     = "maintainer"
}

resource "github_team" "team2" {
  name        = "team2"
  description = "Team responsible for building out infrastructure elements."
  privacy     = "closed"
}

resource "github_team_membership" "team2" {
  team_id  = github_team.team2.id
  username = github_membership.team_member.username
  role     = "maintainer"
}*/
/*====================================================================================*/
/*resource "github_repository" "events_repo" {
  name        = "events-server"
  description = "Repo that contains back end code for events builder"

  private                = false
  has_issues             = true
  has_wiki               = false
  allow_merge_commit     = true
  allow_squash_merge     = false
  allow_rebase_merge     = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Terraform"
  license_template       = "mit"
  topics                 = ["events", "java", "spring", "spring-boot"]
}

resource "github_branch_protection" "events_repo" {
  repository = github_repository.events_repo.name
  branch     = "main"
}

resource "github_team_repository" "events_repo" {
  team_id    = github_team.team2.id
  repository = github_repository.events_repo.name
  permission = "admin"
}

resource "github_team_repository" "events_repo_admin" {
  team_id    = github_team.team1.id
  repository = github_repository.events_repo.name
  permission = "admin"
}*/