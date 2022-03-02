output "private_key_pem" {
  description = "The private key data in PEM format"
  value = tls_private_key.hashicat.private_key_pem
}

output "public_ip" {
  description = "Public IP address of Elastic IP"
  value = aws_eip.hashicat.public_ip
}

output "public_dns" {
  description = "Public DNS associated with the Elastic IP address"
  value = aws_eip.hashicat.public_dns
}