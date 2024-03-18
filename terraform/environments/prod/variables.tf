variable "environment" {
  type    = string
  default = "stage"
}

variable "vpc_cidr" {
  type    = string
  default = "10.253.0.0/20"
}

variable "private_subnets_cidrs" {
  type    = list(string)
  default = ["10.253.0.0/23", "10.253.2.0/23", "10.253.4.0/23"]
}

variable "public_subnets_cidrs" {
  type    = list(string)
  default = ["10.253.6.0/23", "10.253.8.0/23", "10.253.10.0/23"]
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "mgt_vpc_name" {
  type    = string
  default = "Alamy"
}