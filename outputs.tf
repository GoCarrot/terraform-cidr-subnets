output "ipv4_network_cidr_blocks" {
  value       = tomap(local.addrs_by_name)
  description = "A map from network names to allocated address prefixes in CIDR notation."
}

output "ipv6_network_cidr_blocks" {
  value       = tomap(local.ipv6_addrs_by_name)
  description = "A map from network names to allocated address prefixes in CIDR notation."
}

output "networks_by_name" {
  value       = tomap(local.networks_by_name)
  description = "A map from network names to network objects with ipv4_cidr_block and ipv6_cidr_block attributes."
}

output "networks" {
  value       = tolist(local.network_objs)
  description = "A list of objects corresponding to each of the objects in the input variable 'networks', each extended with 'ipv4_cidr_block' and 'ipv6_cidr_block' giving the network's allocated address prefix."
}

output "ipv4_base_cidr_block" {
  value       = var.ipv4_base_cidr_block
  description = "Echoes back the ipv4_base_cidr_block input variable value, for convenience if passing the result of this module elsewhere as an object."
}

output "ipv6_base_cidr_block" {
  value       = var.ipv6_base_cidr_block
  description = "An IPv6 network address prefix in CIDR notation that all of the requested subnetwork prefixes will be allocated within."
}
