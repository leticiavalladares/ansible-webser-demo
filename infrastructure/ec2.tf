resource "aws_instance" "pub_server" {
  count = 3

  ami                    = data.aws_ami.ubuntu_image.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnet.pub_subnet.id
  vpc_security_group_ids = [aws_security_group.ansible_webserver_sg.id]
  key_name               = var.keypair

  tags = {
      Name = "pub-server-${count.index + 1}"
  }

  depends_on = [
    data.aws_vpc.vpc,
    data.aws_subnet.pub_subnet,
    aws_security_group.ansible_webserver_sg
  ]
}