resource "aws_instance" "instance_ubuntu" {
  ami             = data.aws_ami.ubuntu_ami.id
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet_id
  security_groups = [aws_security_group.instance_SG.id]
  user_data       = file("./modules/ec2/script.sh")
  tags = {
    description = "Name your instance"
    Name        = var.instance_name
  }
  key_name = aws_key_pair.aws_key.key_name
}

