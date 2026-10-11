resource "confluent_dns_forwarder" "dns_forwarders" {
  for_each = var.dns_forwarders

  domains      = each.value.domains
  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }

  gateway {
    id = each.value.gateway.id
  }

  dynamic "forward_via_gcp_dns_zones" {
    for_each = each.value.forward_via_gcp_dns_zones != null ? [each.value.forward_via_gcp_dns_zones] : []
    content {
      domain_mappings = forward_via_gcp_dns_zones.value.domain_mappings
    }
  }

  dynamic "forward_via_ip" {
    for_each = each.value.forward_via_ip != null ? [each.value.forward_via_ip] : []
    content {
      dns_server_ips = forward_via_ip.value.dns_server_ips
    }
  }
}

