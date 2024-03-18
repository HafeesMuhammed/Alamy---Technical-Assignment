provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "../../modules/ec2_instance"

  instance_name        = "my-instance"
  ami_id               = "ami-0c55b159cbfafe1f0"
  instance_type        = "t2.micro"
  subnet_id            = "subnet-12345678"
  security_group_id    = module.ec2_security_group.security_group_id
}

module "ec2_security_group" {
  source = "../../modules/ec2_security_group"
}