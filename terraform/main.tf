terraform {
  required_version = ">=0.13"
  backend "s3" {
    bucket = "myapp-test1"
    key    = "terraform/state.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.subnet_ids
  key_name     = var.key_name
}
