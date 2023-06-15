resource "aws_instance" "instance1" {
  ami           = var.ami_id
  instance_type = var.instancetype
}

resource "aws_instance" "instance2" {
  ami           = var.ami_id
  instance_type = var.instancetype
}
