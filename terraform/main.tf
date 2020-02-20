provider "aws" {
  region = var.region
}

module "ecr_demo" {
  source    = "github.com/mozilla-it/terraform-modules//aws/ecr?ref=master"
  repo_name = "github-actions-demo"
}
