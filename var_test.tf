variable "acl" {}

resource "aws_s3_bucket" "b" {
  acl = var.acl
}

resource "aws_s3_bucket" "b" {
  acl = "public-read"
}

