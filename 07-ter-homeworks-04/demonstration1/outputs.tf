output userdata {
  value = "\n${data.template_file.cloudinit.rendered}"
}

output "nginx_public_ip" {
  description = "Public IP"
  value = module.test-vm.*.external_ip_address
}

output "vpc_network_id" {
  description = "Network ID"
  value = module.vpc.vpc_network_id
}

output "vpc_subnet_id" {
  description = "Subnet ID"
  value = module.vpc.vpc_subnet_id
}