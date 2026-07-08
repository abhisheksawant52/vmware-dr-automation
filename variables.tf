variable "vsphere_server" {
  description = "Protected-site vCenter server FQDN or IP."
  type        = string
}

variable "vsphere_user" {
  description = "vCenter username."
  type        = string
}

variable "vsphere_password" {
  description = "vCenter password."
  type        = string
  sensitive   = true
}

variable "allow_unverified_ssl" {
  description = "Allow self-signed vCenter certificates (lab use only)."
  type        = bool
  default     = false
}

variable "protected_datacenter" {
  description = "Protected-site datacenter name."
  type        = string
}

variable "recovery_site" {
  description = "Recovery-site connection details for SRM pairing."
  type = object({
    vcenter_url = string
    srm_url     = string
  })
}

variable "protection_groups" {
  description = "Protection groups mapping replicated VMs to a recovery plan."
  type = list(object({
    name             = string
    replication_type = string # array-based | vsphere-replication
    rpo_minutes      = number
    vms              = list(string)
  }))
  default = []
}

variable "recovery_plans" {
  description = "Ordered recovery plans that fail over one or more protection groups."
  type = list(object({
    name              = string
    protection_groups = list(string)
    priority_tiers    = list(list(string)) # VM boot order tiers
  }))
  default = []
}
