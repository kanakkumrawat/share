resource "tls_private_key" "my_ssh_key" {
  count     = var.instance_count
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "aws_key" {
  count      = var.instance_count
  key_name   = "instance-${count.index + 1}-${var.aws_region}-ssh-key"
  public_key = tls_private_key.my_ssh_key[count.index].public_key_openssh
}

resource "local_file" "private_key" {
  count    = var.instance_count
  content  = tls_private_key.my_ssh_key[count.index].private_key_pem
  filename = "./modules/ec2/instance-${count.index + 1}-${var.aws_region}-ssh-key.pem"
}

