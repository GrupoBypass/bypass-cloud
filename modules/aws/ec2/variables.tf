variable "ami_id" {
  description = "The AMI ID"
  type        = string
}

variable "instance_type" {
  description = "The instance type"
  type        = string
}

variable "private_subnet_id" {
  description = "The subnet ID of the registry and transformer ec2"
  type        = string
}

variable "public_subnet_id" {
  description = "The subnet ID of the visualizer ec2"
  type        = string
}

variable "key_name" {
  description = "The key name"
  type        = string
}

variable "sg_id" {
  description = "The security group ID for the ec2"
  type        = string
}

variable "instance_name" {
  description = "The instance name"
  type        = string
}