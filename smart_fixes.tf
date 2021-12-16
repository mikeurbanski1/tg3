resource "aws_cloudwatch_log_group" "example1" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example2" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example3" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example4" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example5" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example6" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example7" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example8" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
  }
}
