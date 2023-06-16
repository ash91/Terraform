resource "aws_instance" "web" {
  ami           = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"
  key_name      = "Terraform-Key"

  tags = {
    Name = "tf-remote-exec"
  }



  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}

