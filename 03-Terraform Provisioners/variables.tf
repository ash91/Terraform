# variable "vpn_ip" {
#   default = "116.50.30.50/32"
# }

variable "instancetype" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-04a0ae173da5807d3"
}

variable "elb_name" {
  type    = list(any)
  default = ["dev-instance", "prod-instance", "deploy-instance"]
}

# variable "az" {
#   type = list
#   default = ["us-east-1a", "us-east-1b", "us-east-1c"]
# }
