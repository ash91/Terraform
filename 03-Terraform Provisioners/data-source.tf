data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }
}


resource "aws_instance" "instance1" {

  ami           = data.aws_ami.app_ami.id
  instance_type = var.instancetype
  tags = {
    name = "data_instance"
  }
}
