output "private_subnet_ids" {
  description = "IDs of the created private subnets"
  value       = aws_subnet.private.*.id
}

output "private_subnet_cidrs" {
  description = "CIDR blocks of the created private subnets"
  value       = aws_subnet.private.*.cidr_block
}

output "private_route_table_ids" {
  description = "IDs of the created private route tables"
  value       = aws_route_table.private.*.id
}

output "nat_gateway_ids" {
  description = "IDs of the NAT Gateways created"
  value       = aws_nat_gateway.default.*.id
}

output "nat_instance_ids" {
  description = "IDs of the NAT Instances created"
  value       = aws_instance.nat_instance.*.id
}

output "availability_zones" {
  description = "List of Availability Zones where subnets were created"
  value       = var.availability_zones
}
