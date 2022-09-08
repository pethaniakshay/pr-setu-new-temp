env         = "prod"
product     = "prernasetu"
aws_region  = "ap-south-1"
aws_profile = "baps"

# VPC
vpc_cidr_block         = "10.0.0.0/16"
vpc_instance_tenancy   = "default"
ipv4_quad_zero_route   = "0.0.0.0/0"
ipv6_all_network_route = "::/0"

# Bastion
bastion_cidr_block                = "10.0.1.0/24"
bastion_subnet_availability_zone  = "ap-south-1a"
bastion_ami                       = "ami-068257025f72f470d"
bastion_instance_type             = "t2.micro"
bastion_key_pair_name             = "prernasetu-bastion-prod"
bastion_disable_api_termination   = false
bastion_ebs_encrypted             = true
bastion_ebs_volume_size           = 50
bastion_ebs_delete_on_termination = true

# Azs and instances
availability_zones_n_instances = {
  "ap-south-1a" = { index = 1, public_subnet_cidr_block = "10.0.3.0/24", private_subnet_cidr_block = "10.0.2.0/24" },
  "ap-south-1b" = { index = 2, public_subnet_cidr_block = "10.0.5.0/24", private_subnet_cidr_block = "10.0.4.0/24" },
  "ap-south-1c" = { index = 3, public_subnet_cidr_block = "10.0.7.0/24", private_subnet_cidr_block = "10.0.6.0/24" },
}
