output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "security_group_id" {
  value = module.vpc.security_group_id
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}

output "public_instance_id" {
  value = module.ec2_public.instance_id
}

output "public_instance_public_ip" {
  value = module.ec2_public.public_ip
}

output "private_instance_id" {
  value = module.ec2_private.instance_id
}
