variable "tag_assignments" {
  description = <<EOT
Map of tag_assignments, attributes below
Required:
    - entity_id
    - entity_type
    - tag_id
EOT

  type = map(object({
    entity_id   = string
    entity_type = string
    tag_id      = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.tag_assignments : (
        contains(["users", "teams", "escalation_policies"], v.entity_type)
      )
    ])
    error_message = "must be one of: \"users\", \"teams\", \"escalation_policies\""
  }
}

