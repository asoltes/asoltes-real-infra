
variable "ami" {
    default = "ami-01441c79a2c8e534b"
  }

variable "instance_type" {
    default = "t2.micro"
  }

variable "ec2_name_tags" {
    default = "terra-app"
}

variable "ec2_count" {}

variable "subnet_id" {}
