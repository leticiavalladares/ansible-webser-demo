output "instance_public_ip_addr" {
    value = aws_instance.pub_server[*].public_ip
}