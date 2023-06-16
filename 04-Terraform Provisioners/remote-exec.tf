resource "aws_instance" "web" {
  ami           = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"
  key_name      = "Terraform-Key"

  tags = {
    Name = "tf-remote-exec"
  }

  # Establishes connection to be used by all
  # generic remote provisioners (i.e. file/remote-exec)
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./Terraform-Key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y nginx",
      "sudo systemctl start nginx",
    ]
  }
}

output "tf-remote-exec" {
  value = aws_instance.web.public_ip
}
