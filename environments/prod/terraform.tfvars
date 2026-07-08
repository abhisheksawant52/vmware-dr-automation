vsphere_server       = "vcenter-prod-primary.example.com"
vsphere_user         = "administrator@vsphere.local"
allow_unverified_ssl = false
protected_datacenter = "DC-Prod-Primary"

recovery_site = {
  vcenter_url = "https://vcenter-prod-recovery.example.com"
  srm_url     = "https://srm-prod-recovery.example.com"
}
