module "sgmodule" {
  source = "../modules/sg"
}

resource "aws_instance" "moduleEC2" {
  ami                    = "ami-04a0ae173da5807d3"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}

