resource "aws_s3_bucket" "main_bucket" {
  bucket = "terraform-bucket-107212--${var.env_name}"
  tags = {
    "Name" = "Main Bucket"
    "Environment" = var.env_name
  }
}