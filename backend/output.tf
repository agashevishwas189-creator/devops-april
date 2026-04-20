output "instance_ids" {
  description = "IDs of all EC2 instances"
  value       = aws_instance.my_aws[*].id
}

output "public_ips" {
  description = "Public IPs of all EC2 instances"
  value       = aws_instance.my_aws[*].public_ip
}

output "private_ips" {
  description = "Private IPs of all EC2 instances"
  value       = aws_instance.my_aws[*].private_ip
}