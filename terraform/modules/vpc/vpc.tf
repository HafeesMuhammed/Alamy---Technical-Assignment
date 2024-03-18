// VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  instance_tenancy     = "default"
  enable_dns_support   = "true"

  tags = {
    Name        = "Alamy VPC"
    Environment = var.environment
  }
}

// Internet gateway
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "Alamy IG"
    Environment = var.environment
  }
}

resource "aws_subnet" "main-private" {
  vpc_id            = aws_vpc.main.id
  cidr_block = var.private_subnets_cidrs
  availability_zone = var.availability_zones

  tags = {
    Name = "Private Subnet"
    Environment = var.environment
  }
}

resource "aws_subnet" "main-public" {
  vpc_id            = aws_vpc.main.id
  cidr_block = var.public_subnets_cidrs
  availability_zone = var.availability_zones
  
  tags = {
    Name = "Public Subnet"
    Environment = var.environment
  }
}

resource "aws_route_table" "main-private" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "Private Route Table"
    Environment = var.environment
  }
}

resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "Public Route Table"
    Environment = var.environment
  }
}

resource "aws_route_table_association" "main-private" {
  subnet_id      = aws_subnet.main-private.*.id
  route_table_id = aws_route_table.main-private.id
}

resource "aws_route_table_association" "main-public" {
  subnet_id      = aws_subnet.main-public.*.id
  route_table_id = aws_route_table.main-public.id
}