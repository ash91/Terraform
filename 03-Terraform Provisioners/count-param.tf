# resource "aws_instance" "Demoinstance" {
#   ami           = var.ami_id
#   instance_type = var.instancetype
#   count         = 3

#   tags = {
#     Name = var.elb_name[count.index]
#   }
# }
