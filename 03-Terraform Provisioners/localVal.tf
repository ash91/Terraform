locals {
  common_tags = {
    Owner   = "Devops Team"
    service = "backend"
  }
}

resource "aws_instance" "app-dev" {
  ami           = var.ami_id
  instance_type = var.instancetype
  tags          = local.common_tags
}

resource "aws_instance" "db-dev" {
  ami           = var.ami_id
  instance_type = var.instancetype
  tags          = local.common_tags
}
