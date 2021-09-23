
variable "ami" {
    type = string
    default = "ami-01441c79a2c8e534b"
  }

variable "instance_type" {
    type = string
    default = "t2.micro"
  }

variable "instance_name" {
    type = string
    default = "terra-app"
}

variable "instance_count" {
  type = number
}

variable "subnet_id" {
  type = string
}

variable "availability_zone" {
  type = string
  default = "ap-southeast-1a"
}
