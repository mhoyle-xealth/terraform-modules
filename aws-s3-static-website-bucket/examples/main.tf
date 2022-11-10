provider "aws" {
  version = "~> 4.0"
  region  = "us-east-1"
}

resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
}

module "website_s3_bucket" {
  source = "../"

  bucket_name = "spacelift-modules-testcase-${random_string.random.result}"

  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}
