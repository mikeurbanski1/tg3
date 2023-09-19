variable "enc" {
  default = false
}

resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-west-2a"
  size              = 40
  encrypted = var.enc
}

resource "aws_ebs_volume" "vvvvv" {
  
}

