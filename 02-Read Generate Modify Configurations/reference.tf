resource "aws_instance" "instance1" {
  ami = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mydemosg.id]

  tags = {
    Name = "demo-ec2"
  }
}


resource "aws_security_group" "mydemosg" {
  name        = "my-demo-sg"
  description = "Allow http inbound traffic"
  

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-http"
  }
}

# output "myinstance" {
#   value = aws_instance.instance1.public_ip
# }