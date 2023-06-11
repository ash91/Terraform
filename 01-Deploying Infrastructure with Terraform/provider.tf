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

resource "aws_instance" "instance1" {
  ami = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"

  tags = {
    Name = "DemoEC2"
  }
}
