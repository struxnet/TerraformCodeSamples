terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}


resource "github_repository" "example" {
  name        = "example"
  description = "My first github repo create through TF"

  visibility = "public"

  template {
    owner                = "github"
    repository           = "terraform-template-module"
    include_all_branches = true
  }
}