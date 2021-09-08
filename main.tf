terraform {
  required_providers {
    aws ={
      version = "~>3.53"
      source = "hashicorp/aws"
    }
  }
}


provider "aws" {
  region = var.aws_region

}


#This is a default module for any environment stored here
module "aws_vpc" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr
  vpc_tags =  var.vpc_tags
  enable_dns_support = var.enable_dns_support
  enable_dns_hostname = var.enable_dns_hostname

}

module "aws_subnet" {
  source = "./modules/subnets"
  vpc_id = module.aws_vpc.vpc_id
  sg_cidr_block = var.subnet_cidr
  availability_zone = var.subnet_az
  tags = var.subnet_tag
  
}

module "aws_subnet2" {
  source = "./modules/subnets"
  vpc_id = module.aws_vpc.vpc_id
  sg_cidr_block = var.subnet_cidr2
  availability_zone = var.subnet_az2
  tags = var.subnet_tag2
  
}

