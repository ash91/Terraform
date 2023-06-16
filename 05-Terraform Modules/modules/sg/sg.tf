
resource "aws_security_group" "ec2-sg" {
  name = "my-demo-sg"

  ingress {
    description = "Allow inbound from application"
    from_port   = local.app_port
    to_port     = local.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-http"
  }
}


resource "aws_security_group" "elbsg" {
  name = "my-elb-sg"

  ingress {
    description = "Allow inbound from application"
    from_port   = local.app_port
    to_port     = local.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

# by adding locals we ensure that user cannot changes prot accidentally/intentionally.
locals {
  app_port = 8080
}
