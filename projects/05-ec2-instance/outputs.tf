output "http_server_sg" {
  value = aws_security_group.http_server_sg
}

output "http_instance" {
  value = aws_instance.http_server
}
