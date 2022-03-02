output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.hashicat.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.hashicat.id
}

output "securitygroup_id" {
  description = "The ID of the security group"
  value       = aws_security_group.hashicat.id
}

output "internetgateway_id" {
  description = "The ID of the SG"
  value       = aws_internet_gateway.hashicat.id
}

output "routetable_id" {
  description = "The ID of the SG"
  value       = aws_route_table.hashicat.id
}

output "eip_id" {
  description = "The ID of the EIP"
  value       = aws_eip.hashicat.id
}

output "ec2_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.hashicat.id
}