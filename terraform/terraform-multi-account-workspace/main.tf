locals {
  bucket_name = "tf-multi-account-test-1234-${terraform.workspace}"
}

module "s3_bucket_dev" {
  source = "./modules/s3"
  count = terraform.workspace == "dev" ? 1 : 0
  providers = {
    aws = aws.dev
  }
  bucket_name = local.bucket_name
}

module "s3_bucket_prod" {
  source = "./modules/s3"
  count = terraform.workspace == "prod" ? 1 : 0
  providers = {
    aws = aws.prod
  }
  bucket_name = local.bucket_name
}