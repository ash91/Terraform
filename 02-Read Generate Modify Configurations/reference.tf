resource "aws_instance" "instance1" {
  ami = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"

  tags = {
    Name = "DemoEC2"
  }
}

output "myinstance" {
  value = aws_instance.instance1
}