resource "aws_s3_bucket" "mod_bucket" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = var.x
  acl           = var.acl
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
  }
}


variable "x" {

}

variable "acl" {
  
}

variable "enc" {
  default = false
}

resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-west-2a"
  size              = 40
  encrypted = var.enc
}
