output "project_ip_addresses_lookup_project_id" {
  description = "Map of project_id values across all project_ip_addresses_lookup, keyed the same as var.project_ip_addresses_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_project_ip_addresses.project_ip_addresses_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "project_ip_addresses_lookup_services" {
  description = "Map of services values across all project_ip_addresses_lookup, keyed the same as var.project_ip_addresses_lookup except keys with no services are omitted"
  value       = { for k, v in data.mongodbatlas_project_ip_addresses.project_ip_addresses_lookup : k => v.services if v.services != null && length(v.services) > 0 }
}

