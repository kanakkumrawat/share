resource "tls_private_key" "my_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "aws_key" {
  key_name   = "my-ssh-key"
  public_key = tls_private_key.my_ssh_key.public_key_openssh
}

resource "local_file" "private_key" {
  content  = tls_private_key.my_ssh_key.private_key_pem
  filename = "./modules/ec2/my-ssh-key.pem"
}

