variable "aws_region" {
  description = "AWS region"
  default = "ap-south-1"
}

variable "ami_id" {
  description = "Ubuntu 24.04 LTS AMI for ap-south-1"
  default = "ami-05d2d839d4f73aafb"
}

variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of key pair available in AWS"
  default = "devops-project-key"
}

variable "public_key_path" {
  description = "Path to your local puclic key"
  default = "~/.ssh/devops-project-key.pub"
}