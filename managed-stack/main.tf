# This resource here is to show you how plan policies work.

resource "random_password" "secret" {
  length  = 8
  special = true
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "test_role" {
  name = "test_role"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

