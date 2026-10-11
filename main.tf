resource "openstack_blockstorage_qos_v3" "blockstorage_qos_v3s" {
  for_each = var.blockstorage_qos_v3s

  name     = each.value.name
  consumer = each.value.consumer
  region   = each.value.region
  specs    = each.value.specs
}

