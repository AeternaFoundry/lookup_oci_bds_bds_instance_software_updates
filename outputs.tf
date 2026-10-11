output "bds_bds_instance_software_updates_lookup_id" {
  description = "Map of id values across all bds_bds_instance_software_updates_lookup, keyed the same as var.bds_bds_instance_software_updates_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_software_updates.bds_bds_instance_software_updates_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_instance_software_updates_lookup_bds_instance_id" {
  description = "Map of bds_instance_id values across all bds_bds_instance_software_updates_lookup, keyed the same as var.bds_bds_instance_software_updates_lookup except keys with no bds_instance_id are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_software_updates.bds_bds_instance_software_updates_lookup : k => v.bds_instance_id if v.bds_instance_id != null && length(v.bds_instance_id) > 0 }
}
output "bds_bds_instance_software_updates_lookup_filter" {
  description = "Map of filter values across all bds_bds_instance_software_updates_lookup, keyed the same as var.bds_bds_instance_software_updates_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_software_updates.bds_bds_instance_software_updates_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "bds_bds_instance_software_updates_lookup_software_update_collection" {
  description = "Map of software_update_collection values across all bds_bds_instance_software_updates_lookup, keyed the same as var.bds_bds_instance_software_updates_lookup except keys with no software_update_collection are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_software_updates.bds_bds_instance_software_updates_lookup : k => v.software_update_collection if v.software_update_collection != null && length(v.software_update_collection) > 0 }
}

