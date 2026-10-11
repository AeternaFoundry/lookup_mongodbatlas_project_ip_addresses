variable "project_ip_addresses_lookup" {
  description = <<EOT
Map of project_ip_addresses_lookup, attributes below
Required:
    - project_id
EOT

  type = map(object({
    project_id = string
  }))
}

