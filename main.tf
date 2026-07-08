# Root module: validates the protected datacenter and renders SRM protection
# groups and recovery plans into a declarative document applied via the SRM /
# vSphere Replication APIs (Site Recovery Manager has no native TF provider).

data "vsphere_datacenter" "protected" {
  name = var.protected_datacenter
}

module "recovery_plan" {
  source = "./modules/recovery-plan"

  protected_datacenter_id = data.vsphere_datacenter.protected.id
  recovery_site           = var.recovery_site
  protection_groups       = var.protection_groups
  recovery_plans          = var.recovery_plans
}
