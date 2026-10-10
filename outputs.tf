output "iam_user_group_memberships_id" {
  description = "Map of id values across all iam_user_group_memberships, keyed the same as var.iam_user_group_memberships"
  value       = { for k, v in aws_iam_user_group_membership.iam_user_group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_user_group_memberships_groups" {
  description = "Map of groups values across all iam_user_group_memberships, keyed the same as var.iam_user_group_memberships"
  value       = { for k, v in aws_iam_user_group_membership.iam_user_group_memberships : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "iam_user_group_memberships_user" {
  description = "Map of user values across all iam_user_group_memberships, keyed the same as var.iam_user_group_memberships"
  value       = { for k, v in aws_iam_user_group_membership.iam_user_group_memberships : k => v.user if v.user != null && length(v.user) > 0 }
}

