provider "aws" {}

resource "aws_s3_bucket" "data" {
  # checkov:skip=CKV_AWS_145: ADD REASON
  # checkov:skip=CKV_AWS_144: ADD REASON
  # checkov:skip=CKV_AWS_18: ADD REASON
  # checkov:skip=CKV2_AWS_6: ADD REASON
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "private"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
