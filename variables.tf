variable "dns_forwarders" {
  description = <<EOT
Map of dns_forwarders, attributes below
Required:
    - domains
    - environment (block):
        - id (required)
    - gateway (block):
        - id (required)
Optional:
    - display_name
    - forward_via_gcp_dns_zones (block):
        - domain_mappings (optional)
    - forward_via_ip (block):
        - dns_server_ips (optional)
EOT

  type = map(object({
    domains      = set(string)
    display_name = optional(string)
    environment = object({
      id = string
    })
    gateway = object({
      id = string
    })
    forward_via_gcp_dns_zones = optional(object({
      domain_mappings = optional(map(string))
    }))
    forward_via_ip = optional(object({
      dns_server_ips = optional(set(string))
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

