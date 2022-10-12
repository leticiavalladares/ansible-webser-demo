resource "aws_security_group" "ansible_webserver_sg" {
  name        = "ansible_webserver_sg"
  description = "Allow access to this server only from local machine"
  vpc_id      = data.aws_vpc.vpc.id

  # INBOUND CONNECTIONS
  ingress {
    description = "Allow SSH into the EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #[var.my_local_pub_ip]
  }

  ingress {
    description = "Allow HTTP into the EC2"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks =  ["0.0.0.0/0"] #[var.my_local_pub_ip]
  }

  # OUTBOUND CONNECTIONS
  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }

  depends_on = [
    data.aws_vpc.vpc,
    data.aws_subnet.pub_subnet
  ]
}