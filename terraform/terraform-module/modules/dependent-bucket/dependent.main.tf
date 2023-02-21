resource "aws_s3_bucket" "dependent_bucket" {
  bucket = "dependent-bucket-00721"
  tags = {
    "Name" = "Dependent Bucket"
    "Environment" = "Test"
  }
}