resource "aws_s3_bucket" "bad_bucket" {
  #bridgecrew:skip=BC_AWS_GENERAL_26:justification
  #bridgecrew:skip=CKV_AWS_145:justification
  
  bucket = "abc"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  versioning {
    enabled = true
  }
}
