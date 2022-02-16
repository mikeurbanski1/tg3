variable "acl" {}

resource "aws_s3_bucket" "b" {
  acl = var.acl
}
