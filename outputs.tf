output "dns_forwarders_id" {
  description = "Map of id values across all dns_forwarders, keyed the same as var.dns_forwarders except keys with no id are omitted"
  value       = { for k, v in confluent_dns_forwarder.dns_forwarders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_forwarders_display_name" {
  description = "Map of display_name values across all dns_forwarders, keyed the same as var.dns_forwarders except keys with no display_name are omitted"
  value       = { for k, v in confluent_dns_forwarder.dns_forwarders : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dns_forwarders_domains" {
  description = "Map of domains values across all dns_forwarders, keyed the same as var.dns_forwarders except keys with no domains are omitted"
  value       = { for k, v in confluent_dns_forwarder.dns_forwarders : k => v.domains if v.domains != null && length(v.domains) > 0 }
}
output "dns_forwarders_environment" {
  description = "Map of environment values across all dns_forwarders, keyed the same as var.dns_forwarders except keys with no environment are omitted"
  value       = { for k, v in confluent_dns_forwarder.dns_forwarders : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "dns_forwarders_forward_via_gcp_dns_zones" {
  description = "Map of forward_via_gcp_dns_zones values across all dns_forwarders, keyed the same as var.dns_forwarders except keys with no forward_via_gcp_dns_zones are omitted"
  value       = { for k, v in confluent_dns_forwarder.dns_forwarders : k => one(v.forward_via_gcp_dns_zones) if v.forward_via_gcp_dns_zones != null && length(v.forward_via_gcp_dns_zones) > 0 }
}
output "dns_forwarders_forward_via_ip" {
  description = "Map of forward_via_ip values across all dns_forwarders, keyed the same as var.dns_forwarders except keys with no forward_via_ip are omitted"
  value       = { for k, v in confluent_dns_forwarder.dns_forwarders : k => one(v.forward_via_ip) if v.forward_via_ip != null && length(v.forward_via_ip) > 0 }
}
output "dns_forwarders_gateway" {
  description = "Map of gateway values across all dns_forwarders, keyed the same as var.dns_forwarders except keys with no gateway are omitted"
  value       = { for k, v in confluent_dns_forwarder.dns_forwarders : k => one(v.gateway) if v.gateway != null && length(v.gateway) > 0 }
}

