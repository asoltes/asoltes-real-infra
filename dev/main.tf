
module "my_network" {
  source            = "../modules/vpc"
  vpc_cidr_block    = "10.16.0.0/16"
  tenancy           = "dedicated"
  subnet_cidr_block = "10.16.16.0/20"
  vpc_name_tags     = "dev-vpc-ap-se-1"
}

module "my_ec2_instances" {
  source              = "../modules/ec2"
  ami                 = "ami-01441c79a2c8e534b"
  instance_count      = 2
  instance_type       = "t2.micro"
  instance_name       = "dev-app-ap-se-1"
  subnet_id           = module.my_network.subnet_id
  availability_zone   = ""

}
