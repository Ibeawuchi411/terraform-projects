# Authenticate Terraform with AWS by configuring the AWS Provider
provider "aws" {
  region = "us-east-2"
  profile = "terraform-user"
}

# Stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "claude-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-west-1"
    profile = "terraform-user"
  }
}
