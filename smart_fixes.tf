resource "aws_cloudwatch_log_group" "example1" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example2" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example3" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example4" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example5" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example6" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example7" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example8" {
  # checkov:skip=BC_AWS_GENERAL_85:nah
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
}
