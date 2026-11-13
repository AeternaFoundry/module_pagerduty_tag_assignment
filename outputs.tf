output "tag_assignments_id" {
  description = "Map of id values across all tag_assignments, keyed the same as var.tag_assignments"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.id }
}
output "tag_assignments_entity_id" {
  description = "Map of entity_id values across all tag_assignments, keyed the same as var.tag_assignments"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.entity_id }
}
output "tag_assignments_entity_type" {
  description = "Map of entity_type values across all tag_assignments, keyed the same as var.tag_assignments"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.entity_type }
}
output "tag_assignments_tag_id" {
  description = "Map of tag_id values across all tag_assignments, keyed the same as var.tag_assignments"
  value       = { for k, v in pagerduty_tag_assignment.tag_assignments : k => v.tag_id }
}

