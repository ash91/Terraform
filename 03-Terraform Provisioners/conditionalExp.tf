resource "aws_instance" "dev" {
  ami           = var.ami_id
  instance_type = var.instancetype
  tags = {
    Name = "dev"
  }
  count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami           = var.ami_id
  instance_type = var.instancetype
  tags = {
    Name = "prod"
  }
  count = var.istest == false ? 1 : 0
}
