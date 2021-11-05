resource "aws_s3_bucket" "regular_bucket" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "xx"
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    yor_trace   = "bfb5d384-e1ad-49ee-b6eb-7f3cfea9f8b1"
  }
}

resource "aws_something_else" "x" {
  hello = "hi"
}

module "mod" {
  source = "./module"
  x      = "abc"
}

module "mod2" {
  source = "./module"
  x      = "xyz"
}

module "iam_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "~> 4.3"

  name        = "example"
  path        = "/"
  description = "My example policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

module "dynamodb_table" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name     = "my-table"
  hash_key = "id"

  attributes = [
    {
      name = "id"
      type = "N"
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "staging"
    yor_trace   = "60123a32-7273-40d0-9880-f92a04bbaa57"
  }

  server_side_encryption_enabled = false
}

module "dynamodb_table2" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name     = "my-table2"
  hash_key = "id2"

  attributes = [
    {
      name = "id2"
      type = "N"
    }
  ]

  tags = {
    Terraform   = "true2"
    Environment = "staging2"
    yor_trace   = "93bc5102-a54b-4cec-8469-bebd81943388"
  }

  server_side_encryption_enabled = false
}
