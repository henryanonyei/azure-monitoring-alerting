variable "project_name" {
  description = "Azuremonitoring"
  type        = string
  default     = "monitoring"
}

variable "environment" {
  description = "staging"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "East US"
  type        = string
  default     = "eastus2"
}
variable "log_retention_days" {
  description = "Number of days to retain logs in the Log Analytics Workspace"
  type        = number
  default     = 30
}
variable "my_ip" {
  description = "Your public IP address (CIDR) allowed to RDP into the VM"
  type        = string
  default     = "176.253.32.224/32"
}
variable "vm_size" {
  description = "Size of the Windows virtual machine"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Local administrator username for the VM"
  type        = string
  default     = "monitoradmin"
}

variable "admin_password" {
  description = "Local administrator password for the VM. Must meet Azure complexity requirements (12+ chars, 3 of: upper/lower/number/special)."
  type        = string
  sensitive   = true
}
variable "alert_email" {
  description = "Email address to receive monitoring alerts"
  type        = string
}
