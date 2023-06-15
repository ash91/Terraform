resource "aws_instance" "dev" {
  ami           = var.ami_id
  instance_type = var.instancetype
  tags = {
    Name = dev
  }
}

resource "aws_instance" "prod" {
  ami           = var.ami_id
  instance_type = var.instancetype
  tags = {
    Name = prod
  }
}
