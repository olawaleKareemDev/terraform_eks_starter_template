data "aws_region" "current" {}

module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source   = "./modules/subnet"
  vpc_id   = module.vpc.vpc_id  
}

module "gateways" {
  source = "./modules/gateways"
  vpc_id = module.vpc.vpc_id  
  vpc_cidr = module.vpc.vpc_cidr
  public_subnets = module.subnet.public_subnets
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id  
  vpc_cidr = module.vpc.vpc_cidr  
  internet_gateway_id = module.gateways.internet_gateway_id
  nat_gateway_id = module.gateways.nat_gateway_id
  private_subnets = module.subnet.private_subnets
  public_subnets = module.subnet.public_subnets
}


module "eks" {
  source = "./modules/eks"
  vpc_id = module.vpc.vpc_id  
  vpc_cidr = module.vpc.vpc_cidr  
  private_subnets = module.subnet.private_subnets
  public_subnets = module.subnet.public_subnets
  
}

