# Azure Monitoring & Alerting — Terraform

Provisions a Windows VM on Azure with centralized monitoring: a Log Analytics Workspace, diagnostic settings streaming VM metrics, a CPU threshold alert rule, and an action group that sends email notifications.

## Resources created

- Resource Group
- Log Analytics Workspace (30-day retention)
- Virtual Network + Subnet + NSG (RDP restricted to a single IP)
- Public IP + Network Interface
- Windows Server 2022 VM
- Diagnostic Settings (VM metrics → Log Analytics)
- Metric Alert (CPU > 80% for 5 minutes)
- Action Group (email notification)

## Prerequisites

- Terraform >= 1.5
- Azure CLI, authenticated via `az login`
- A verified Azure subscription with available VM quota in your target region

## Usage

\`\`\`bash
cp terraform.tfvars.example terraform.tfvars
# edit terraform.tfvars: set admin_password and alert_email

terraform init
terraform plan
terraform apply
\`\`\`

## Cleanup

\`\`\`bash
terraform destroy
\`\`\`

## Notes

VM size and region availability can vary by subscription — if you hit a `SkuNotAvailable` or quota error during `apply`, try a different `vm_size` or `location` in `variable.tf`. See Azure's [VM quota documentation](https://learn.microsoft.com/azure/quotas/quotas-overview) for details.