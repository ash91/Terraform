# locals {
#   common_tags = {
#     Owner   = "Devops Team"
#     service = "backend"
#   }
# }

# resource "aws_instance" "app-dev" {
#   ami           = var.ami_id
#   instance_type = var.instancetype
#   tags          = local.common_tags
# }

# resource "aws_instance" "db-dev" {
#   ami           = var.ami_id
#   instance_type = var.instancetype
#   tags          = local.common_tags
# }

# resource "aws_ebs_volume" "db-ebs" {
#   availability_zone = "us-east-1a"
#   size              = 8
#   tags              = local.common_tags
# }
