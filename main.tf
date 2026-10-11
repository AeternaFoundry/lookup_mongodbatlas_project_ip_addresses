data "mongodbatlas_project_ip_addresses" "project_ip_addresses_lookup" {
  for_each = var.project_ip_addresses_lookup

  project_id = each.value.project_id
}

