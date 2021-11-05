resource "aws_s3_bucket" "mod_bucket" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = var.x
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    yor_trace   = "10494cb4-5627-4b94-9f75-17d31bee1ad9"
  }
}


variable "x" {

}