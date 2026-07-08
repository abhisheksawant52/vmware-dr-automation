output "recovery_plan_path" {
  description = "Path to the rendered DR recovery plan JSON."
  value       = local_file.recovery_plan.filename
}

output "protection_group_count" {
  value = length(var.protection_groups)
}
