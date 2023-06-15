variable "ami_component" {}

data "aws_ami" "selected" {
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "tag:component"
    values = ["${var.ami_component}"]
  }

  most_recent = true
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.selected.id
  instance_type = "t2.micro"


}
