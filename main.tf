resource "aws_vpc" "bypass_vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = var.vpc_name
  }
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0866a3c8686eaeeba"
  instance_type = "t2.small"
  subnet_id     = module.subnets.public_subnet_id
  #sg_id         = module.sg_ec2.sg_id
  key_name      = var.key_name
  instance_name = "ec2_visualizer"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0866a3c8686eaeeba"
  instance_type = "t2.small"
  subnet_id     = module.subnets.private_subnet_id
  #sg_id         = #module.sg_ec2.sg_id
  key_name      = var.key_name
  instance_name = "ec2_transformer"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0866a3c8686eaeeba"
  instance_type = "t2.small"
  subnet_id     = module.subnets.private_subnet_id
  #sg_id         = #module.sg_ec2.sg_id
  key_name      = var.key_name
  instance_name = "ec2_registry"
}