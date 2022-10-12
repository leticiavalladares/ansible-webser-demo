ami_name                       = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
aws_ami_owner                  = "099720109477"
instance_type                  = "t3.medium"
keypair                        = "talent-academy-ec2"
aws_region                     = "eu-central-1"
priv_subnet_a                  = "priv-subnet-1"
priv_subnet_b                  = "priv-subnet-2"
pub_subnet                     = "pub-subnet"
vpc_name                       = "vpc"
aws_pub_subnet_cidr_block_b    = "10.0.4.0/24"
ig                             = "ig-vpc"

#ssh -i ~/.ssh/talent-academy-ec2 ubuntu@3.127.98.132