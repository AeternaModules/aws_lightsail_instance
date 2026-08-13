variable "lightsail_instances" {
  description = <<EOT
Map of lightsail_instances, attributes below
Required:
    - availability_zone
    - blueprint_id
    - bundle_id
    - name
Optional:
    - ip_address_type
    - key_pair_name
    - region
    - tags
    - tags_all
    - user_data
    - add_on (block):
        - snapshot_time (required)
        - status (required)
        - type (required)
EOT

  type = map(object({
    availability_zone = string
    blueprint_id      = string
    bundle_id         = string
    name              = string
    ip_address_type   = optional(string)
    key_pair_name     = optional(string)
    region            = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    user_data         = optional(string)
    add_on = optional(object({
      snapshot_time = string
      status        = string
      type          = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lightsail_instances : (
        v.add_on == null || (can(regex("^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$", v.add_on.snapshot_time)))
      )
    ])
    error_message = "must be in HH:00 format, and in Coordinated Universal Time (UTC)."
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

