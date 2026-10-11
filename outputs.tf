output "blockstorage_qos_v3s_id" {
  description = "Map of id values across all blockstorage_qos_v3s, keyed the same as var.blockstorage_qos_v3s except keys with no id are omitted"
  value       = { for k, v in openstack_blockstorage_qos_v3.blockstorage_qos_v3s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "blockstorage_qos_v3s_consumer" {
  description = "Map of consumer values across all blockstorage_qos_v3s, keyed the same as var.blockstorage_qos_v3s except keys with no consumer are omitted"
  value       = { for k, v in openstack_blockstorage_qos_v3.blockstorage_qos_v3s : k => v.consumer if v.consumer != null && length(v.consumer) > 0 }
}
output "blockstorage_qos_v3s_name" {
  description = "Map of name values across all blockstorage_qos_v3s, keyed the same as var.blockstorage_qos_v3s except keys with no name are omitted"
  value       = { for k, v in openstack_blockstorage_qos_v3.blockstorage_qos_v3s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "blockstorage_qos_v3s_region" {
  description = "Map of region values across all blockstorage_qos_v3s, keyed the same as var.blockstorage_qos_v3s except keys with no region are omitted"
  value       = { for k, v in openstack_blockstorage_qos_v3.blockstorage_qos_v3s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "blockstorage_qos_v3s_specs" {
  description = "Map of specs values across all blockstorage_qos_v3s, keyed the same as var.blockstorage_qos_v3s except keys with no specs are omitted"
  value       = { for k, v in openstack_blockstorage_qos_v3.blockstorage_qos_v3s : k => v.specs if v.specs != null && length(v.specs) > 0 }
}

