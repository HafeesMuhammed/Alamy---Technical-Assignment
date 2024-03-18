variable "environment" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "aws_region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "private_subnets_cidrs" {
  type = list(string)
}

variable "public_subnets_cidrs" {
  type = list(string)
}

