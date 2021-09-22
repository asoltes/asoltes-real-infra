terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "asoltes-real"

    workspaces {
      name = "asoltes-real-infra"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  alias = "aws_asoltes"
  profile = "orientalgroup"
  region  = "ap-southeast-1"
}