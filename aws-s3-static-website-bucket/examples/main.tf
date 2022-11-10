module "website_s3_bucket" {
  source  = "../"

  bucket_name = "spacelift-modules-testcase"

  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}
