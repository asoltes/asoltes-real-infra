provider "aws" {
  region = "us-east-1"
  profile = "asoltes-real"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 3.59.0"
		}
  }
}
