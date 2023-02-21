resource "aws_s3_bucket" "main_bucket" {
  bucket = "main-bucket-00721"
  tags = {
    "Name" = "Main Bucket"
    "Environment" = "Test"
  }
}