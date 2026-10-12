resource "pagerduty_tag_assignment" "tag_assignments" {
  for_each = var.tag_assignments

  entity_id   = each.value.entity_id
  entity_type = each.value.entity_type
  tag_id      = each.value.tag_id
}

