resource "aws_instance" "instance1" {
  ami           = var.ami_id
  instance_type = var.instancetype
  count         = 3

  tags = {
    Name = "Demoinstance.${count.index}"
  }


}
