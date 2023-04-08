module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "prods"
  cidr = "10.16.0.0/16"

  azs             = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  private_subnets = ["10.16.1.0/24", "10.16.2.0/24", "10.16.3.0/24"]
  public_subnets  = ["10.16.101.0/24", "10.16.102.0/24", "10.16.103.0/24"]

  enable_nat_gateway  = true
  single_nat_gateway = true
  one_nat_gateway_per_az = true

  tags = {
    Terraform = "true"
    Environment = "prod"
  }
}


## SINGLE INSTANCE
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "flame-dashboard"
  ami                    = "ami-01441c79a2c8e534b"
  instance_type          = "t2.micro"
  key_name               = "as-apse1-prod"
  monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


