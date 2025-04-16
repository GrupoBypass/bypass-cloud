resource "aws_instance" "ec2_visualizer" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "ec2_transformer" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "ec2_registry" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = var.instance_name
  }
}