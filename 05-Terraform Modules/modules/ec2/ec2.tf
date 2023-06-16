resource "aws_instance" "web" {
  ami           = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"


  tags = {
    Name = "tf-remote-exec"
  }
}
