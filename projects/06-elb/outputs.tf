output "http_server_sg" {
  value = aws_security_group.http_server_sg
}

output "http_instance" {
  # value = aws_instance.http_servers.*.public_dns
  value = values(aws_instance.http_servers).*.public_dns
}


output "elb_public_dns" {
  # value = aws_instance.http_servers.*.public_dns
  value = aws_elb.elb
}