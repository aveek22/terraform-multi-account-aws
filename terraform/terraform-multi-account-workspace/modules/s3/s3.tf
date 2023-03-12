variable "bucket_name" {}

resource aws_s3_bucket "tf_multi_workspace_bucket" {
  bucket = var.bucket_name
}