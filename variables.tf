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
}

