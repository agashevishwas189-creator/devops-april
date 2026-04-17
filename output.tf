output "instance_public_ip" {
    value = aws_instance.my_aws.public_ip
}

output "instance_id" {
    value = aws_instance.my_aws.id
}

output "security_group_id" {
    value = aws_security_group.my_sg.id
}

output "security_group_name" {
    value = aws_security_group.my_sg.name
}

output "aws_instance_arn" {
    value = aws_instance.my_aws.arn
}

output "aws_instance_private_ip" {
    value = aws_instance.my_aws.private_ip
}

