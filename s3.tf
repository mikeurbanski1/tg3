resource "aws_s3_bucket" "default" {
  count         = local.enabled ? 1 : 0
  bucket        = local.bucket_name
  force_destroy = var.force_destroy

}

resource "aws_s3_bucket_public_access_block" "default" {
  count  = module.this.enabled && local.public_access_block_enabled ? 1 : 0
  bucket = join("", aws_s3_bucket.default.*.id)
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

# resource "aws_s3_bucket" "will_it_blend" {
#   # bucket is public
#   # bucket is not encrypted
#   # bucket does not have access logs
#   # bucket does not have versioning
#   bucket        = "xx"
#   acl           = "public-read"
#   force_destroy = true
#   tags = {
#     Name        = "${local.resource_prefix.value}-data"
#     Environment = local.resource_prefix.value
#   }
# }

# resource "aws_s3_bucket" "regular_bucket2" {
#   # bucket is public
#   # bucket is not encrypted
#   # bucket does not have access logs
#   # bucket does not have versioning
#   bucket        = "xx2"
#   acl           = "public-read"
#   force_destroy = true
#   tags = {
#     Name        = "${local.resource_prefix.value}-data"
#     Environment = local.resource_prefix.value
#   }
# }

# resource "aws_something_else" "x" {
#   hello = "hi"
# }

module "mod" {
  source = "./module"
  x = "abc"
  acl = "public-read"
}
  
module "mod2" {
  source = "./module"
  x = "abc"
  acl = "public-read"
}
  
# module "iam_policy" {
#   source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
#   version = "~> 4.3"

#   name        = "example"
#   path        = "/"
#   description = "My example policy"

#   policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": [
#         "*"
#       ],
#       "Effect": "Allow",
#       "Resource": "*"
#     }
#   ]
# }
# EOF
# }

# module "dynamodb_table" {
#   source   = "terraform-aws-modules/dynamodb-table/aws"

#   name     = "my-table"
#   hash_key = "id"

#   attributes = [
#     {
#       name = "id"
#       type = "N"
#     }
#   ]

#   tags = {
#     Terraform   = "true"
#     Environment = "staging"
#   }

#   server_side_encryption_enabled = false
# }

# module "dynamodb_table2" {
#   source   = "terraform-aws-modules/dynamodb-table/aws"

#   name     = "my-table2"
#   hash_key = "id2"

#   attributes = [
#     {
#       name = "id2"
#       type = "N"
#     }
#   ]

#   tags = {
#     Terraform   = "true2"
#     Environment = "staging2"
#   }

#   server_side_encryption_enabled = false
# }
