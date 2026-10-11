variable "blockstorage_qos_v3s" {
  description = <<EOT
Map of blockstorage_qos_v3s, attributes below
Required:
    - name
Optional:
    - consumer
    - region
    - specs
EOT

  type = map(object({
    name     = string
    consumer = optional(string)
    region   = optional(string)
    specs    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.blockstorage_qos_v3s : (
        v.consumer == null || (contains(["front-end", "back-end", "both"], v.consumer))
      )
    ])
    error_message = "must be one of: \"front-end\", \"back-end\", \"both\""
  }
}

