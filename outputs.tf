output "lightsail_instances_id" {
  description = "Map of id values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_instances_add_on" {
  description = "Map of add_on values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => one(v.add_on) if v.add_on != null && length(v.add_on) > 0 }
}
output "lightsail_instances_arn" {
  description = "Map of arn values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lightsail_instances_availability_zone" {
  description = "Map of availability_zone values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "lightsail_instances_blueprint_id" {
  description = "Map of blueprint_id values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.blueprint_id if v.blueprint_id != null && length(v.blueprint_id) > 0 }
}
output "lightsail_instances_bundle_id" {
  description = "Map of bundle_id values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.bundle_id if v.bundle_id != null && length(v.bundle_id) > 0 }
}
output "lightsail_instances_cpu_count" {
  description = "Map of cpu_count values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.cpu_count if v.cpu_count != null }
}
output "lightsail_instances_created_at" {
  description = "Map of created_at values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "lightsail_instances_ip_address_type" {
  description = "Map of ip_address_type values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "lightsail_instances_ipv6_addresses" {
  description = "Map of ipv6_addresses values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.ipv6_addresses if v.ipv6_addresses != null && length(v.ipv6_addresses) > 0 }
}
output "lightsail_instances_is_static_ip" {
  description = "Map of is_static_ip values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.is_static_ip if v.is_static_ip != null }
}
output "lightsail_instances_key_pair_name" {
  description = "Map of key_pair_name values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.key_pair_name if v.key_pair_name != null && length(v.key_pair_name) > 0 }
}
output "lightsail_instances_name" {
  description = "Map of name values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lightsail_instances_private_ip_address" {
  description = "Map of private_ip_address values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.private_ip_address if v.private_ip_address != null && length(v.private_ip_address) > 0 }
}
output "lightsail_instances_public_ip_address" {
  description = "Map of public_ip_address values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.public_ip_address if v.public_ip_address != null && length(v.public_ip_address) > 0 }
}
output "lightsail_instances_ram_size" {
  description = "Map of ram_size values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.ram_size if v.ram_size != null }
}
output "lightsail_instances_region" {
  description = "Map of region values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lightsail_instances_tags" {
  description = "Map of tags values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lightsail_instances_tags_all" {
  description = "Map of tags_all values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "lightsail_instances_user_data" {
  description = "Map of user_data values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.user_data if v.user_data != null && length(v.user_data) > 0 }
}
output "lightsail_instances_username" {
  description = "Map of username values across all lightsail_instances, keyed the same as var.lightsail_instances"
  value       = { for k, v in aws_lightsail_instance.lightsail_instances : k => v.username if v.username != null && length(v.username) > 0 }
}

