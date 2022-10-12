# VPC of Talent-Academy Lab account
data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_ami" "ubuntu_image" {
  most_recent = true
  owners      = [var.aws_ami_owner]

  filter {
    name   = "name"
    values = [var.ami_name]
  }
}

data "aws_subnet" "pub_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.pub_subnet]
  }
}