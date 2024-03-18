provider "aws" {
  region = "us-east-1"
}

module "iam" {
  source = "../../modules/iam_users"
}