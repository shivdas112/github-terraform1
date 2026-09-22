provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "vcube-s3-tfstate238748"
    key = "dev/terraform.tfstate"
    region = "ap-south-1"
    
  }
}

module "vpc" {
  source   = "../modules/vpc"
  name     = var.name
  vpc_cidr = var.vpc_cidr
  azs      = var.azs
  tags     = var.tags
}
