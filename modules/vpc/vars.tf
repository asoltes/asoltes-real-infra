variable "vpc_cidr_block" {
  default = "10.16.0.0/16"
}

variable "tenancy" {
  default = "dedicated"
}

variable "subnet_cidr_block" {
}

variable "vpc_name_tags" {
}
