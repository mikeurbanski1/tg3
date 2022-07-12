variable "acl" {}

resource "aws_s3_bucket" "b" {
  acl = var.acl
}


resource "aws_s3_bucket" "b_log_bucket" {
  bucket = "b-log-bucket"
}

resource "aws_s3_bucket_logging" "b" {
  bucket = aws_s3_bucket.b.id

  target_bucket = aws_s3_bucket.b_log_bucket.id
  target_prefix = "log/"
}

resource "aws_s3_bucket" "b_log_bucket" {
  bucket = "b-log-bucket"
}

resource "aws_s3_bucket_logging" "b" {
  bucket = aws_s3_bucket.b.id

  target_bucket = aws_s3_bucket.b_log_bucket.id
  target_prefix = "log/"
}