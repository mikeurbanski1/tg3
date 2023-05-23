variable "enc" {
  default = false
}

resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-west-2a"
  size              = 40
  encrypted = var.enc
}


resource "random_integer" "priority" {
  min = 1
  max = 50000
}


resource "random_integer" "priority2" {
  min = 1
  max = 50000
}
