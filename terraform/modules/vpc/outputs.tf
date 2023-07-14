output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "The ID of the subnet"
  value       = [aws_subnet.main.id, aws_subnet.secondary.id]
}
