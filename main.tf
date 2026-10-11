data "oci_bds_bds_instance_software_updates" "bds_bds_instance_software_updates_lookup" {
  for_each = var.bds_bds_instance_software_updates_lookup

  bds_instance_id = each.value.bds_instance_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

