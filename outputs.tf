output "tag_assignments_id" {
  description = "Map of id values across all tag_assignments, keyed the same as var.tag_assignments except keys with no id are omitted"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tag_assignments_entity_id" {
  description = "Map of entity_id values across all tag_assignments, keyed the same as var.tag_assignments except keys with no entity_id are omitted"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.entity_id if v.entity_id != null && length(v.entity_id) > 0 }
}
output "tag_assignments_entity_type" {
  description = "Map of entity_type values across all tag_assignments, keyed the same as var.tag_assignments except keys with no entity_type are omitted"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.entity_type if v.entity_type != null && length(v.entity_type) > 0 }
}
output "tag_assignments_tag_id" {
  description = "Map of tag_id values across all tag_assignments, keyed the same as var.tag_assignments except keys with no tag_id are omitted"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.tag_id if v.tag_id != null && length(v.tag_id) > 0 }
}

