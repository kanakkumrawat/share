resource "aws_instance" "instance_ubuntu" {
  count           = var.instance_count
  ami             = data.aws_ami.ubuntu_ami.id
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet_id[count.index]
  security_groups = [aws_security_group.instance_security_group.id]
  user_data       = file("${path.module}/scripts/script.sh")

  tags = {
    description = "Name your instance"
    Name        = "instance-${var.aws_region}-${count.index + 1}"
  }

  key_name = aws_key_pair.aws_key[count.index].key_name
}

