#Output instance
output "instance_id" {
    value = aws_instance.test.id
}

output "instance_public_ip" {
    value = aws_instance.test.public_ip
}

#Output sg
output "sg_id" {
    value = aws_security_group.allow_ssh_anywhere.id
}
