resource "aws_instance" "instance1" {
  ami = var.ami_id
  instance_type = var.instancetype

  tags = {
    Name = "DemoEC2"
  }
}