terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# resource "aws_s3_bucket" "mydemos3" {
#   bucket = "my-tf-demo-test-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

# output "mys3" {
#   value = aws_s3_bucket.mydemos3   
# }