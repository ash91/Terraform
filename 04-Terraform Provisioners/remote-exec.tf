resource "aws_instance" "web" {
  ami           = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-remote-exec"
  }

  # Establishes connection to be used by all
  # generic remote provisioners (i.e. file/remote-exec)
  connection {
    type     = "ssh"
    user     = "root"
    password = var.root_password
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}
