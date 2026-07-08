vsphere_server       = "vcenter-dev-primary.example.com"
vsphere_user         = "administrator@vsphere.local"
allow_unverified_ssl = true
protected_datacenter = "DC-Dev-Primary"

recovery_site = {
  vcenter_url = "https://vcenter-dev-recovery.example.com"
  srm_url     = "https://srm-dev-recovery.example.com"
}
