# Usage

1. Copy `terraform.tfvars.example` to `terraform.tfvars` and set your protected
   site, recovery site (SRM), protection groups, and recovery plans.
2. `make init && make plan`, then `terraform apply` to render
   `generated/dr-recovery-plan.json`.
3. Apply the rendered plan against Site Recovery Manager / vSphere Replication
   via your operator tooling or CI (SRM has no native Terraform provider).

## Testing failover

Use SRM **test recovery** (isolated bubble network) before a real failover; the
rendered plan includes priority tiers that define VM boot order.
