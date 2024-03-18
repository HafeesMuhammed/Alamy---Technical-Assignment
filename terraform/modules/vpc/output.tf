output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.main-private.*.id
}

output "private_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = [aws_subnet.main-private.*.cidr_block]
}

output "public_subnets_ids" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.main-public.*.id
}

output "public_subnets_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = [aws_subnet.main-public.*.cidr_block]
}

output "public_subnets_id_0" {
  description = "public subnet-0"
  value       = element(aws_subnet.main-public.*.id, 0)
}

output "public_subnets_id_1" {
  description = "public subnet-1"
  value       = element(aws_subnet.main-public.*.id, 1)
}

output "public_subnets_id_2" {
  description = "public subnet-2"
  value       = element(aws_subnet.main-public.*.id, 2)
}

output "private_subnets_id_0" {
  description = "private subnet-0"
  value       = element(aws_subnet.main-private.*.id, 0)
}

output "private_subnets_id_1" {
  description = "private subnet-1"
  value       = element(aws_subnet.main-private.*.id, 1)
}

output "private_subnets_id_2" {
  description = "private subnet-2"
  value       = element(aws_subnet.main-private.*.id, 2)
}
