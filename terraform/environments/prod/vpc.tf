module "vpc" {
  source                = "../../modules/vpc"
  environment           = var.environment
  vpc_cidr              = var.vpc_cidr
  private_subnets_cidrs = var.private_subnets_cidrs
  public_subnets_cidrs  = var.public_subnets_cidrs
  availability_zones    = var.availability_zones
  aws_region            = var.aws_region
  name                  = var.vpc_name
}