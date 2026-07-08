variable "protected_datacenter_id" {
  type = string
}

variable "recovery_site" {
  type = object({
    vcenter_url = string
    srm_url     = string
  })
}

variable "protection_groups" {
  type = list(object({
    name             = string
    replication_type = string
    rpo_minutes      = number
    vms              = list(string)
  }))
  default = []
}

variable "recovery_plans" {
  type = list(object({
    name              = string
    protection_groups = list(string)
    priority_tiers    = list(list(string))
  }))
  default = []
}
