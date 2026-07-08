output "protected_datacenter_id" {
  description = "Managed object ID of the protected datacenter."
  value       = data.vsphere_datacenter.protected.id
}

output "recovery_plan_path" {
  description = "Path to the rendered DR recovery plan document."
  value       = module.recovery_plan.recovery_plan_path
}

output "protection_group_count" {
  value = module.recovery_plan.protection_group_count
}
