provider "aws" {
  region = var.region
}

module "vpc" {
  source                = "./modules/vpc"
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  availability_zones    = var.availability_zones
}

module "ec2_public" {
  source            = "./modules/ec2"
  subnet_id         = module.vpc.public_subnet_ids[0]
  ami               = var.ami
  instance_type     = var.instance_type
  security_group_id = module.vpc.security_group_id
}

module "ec2_private" {
  source            = "./modules/ec2"
  subnet_id         = module.vpc.private_subnet_ids[0]
  ami               = var.ami
  instance_type     = var.instance_type
  security_group_id = module.vpc.security_group_id
}
