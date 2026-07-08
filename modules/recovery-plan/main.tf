# Renders SRM protection groups and recovery plans to a single JSON document
# applied by operator tooling / CI against the SRM and vSphere Replication APIs.

locals {
  dr_plan = {
    recoverySite     = var.recovery_site
    protectionGroups = var.protection_groups
    recoveryPlans    = var.recovery_plans
  }
}

resource "local_file" "recovery_plan" {
  content  = jsonencode(local.dr_plan)
  filename = "${path.root}/generated/dr-recovery-plan.json"
}
