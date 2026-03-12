# Bastion Host
resource "aws_instance" "bastion" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.pub-s1.id

  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "bastion-host"
  }
}

# Private EC2
resource "aws_instance" "private_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private-s1.id

  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "private-server"
  }
}
