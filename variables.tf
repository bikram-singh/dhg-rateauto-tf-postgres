variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "network" {
  description = "VPC network name"
  type        = string
}

variable "subnetwork" {
  description = "Subnetwork name"
  type        = string
}

variable "instance_name" {
  description = "Cloud SQL instance name"
  type        = string
}

variable "database_version" {
  description = "Cloud SQL database version"
  type        = string
}

variable "tier" {
  description = "Machine type tier for the SQL instance"
  type        = string
}

variable "db_user" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "edition" {
  description = "Cloud SQL edition"
  type        = string
}

variable "disk_type" {
  description = "Disk type for the SQL instance"
  type        = string
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
}

variable "disk_autoresize" {
  description = "Enable disk autoresize"
  type        = bool
}

variable "availability_type" {
  description = "Availability type for the SQL instance"
  type        = string
}

variable "cpu_count" {
  description = "Number of CPUs"
  type        = number
}

variable "memory_size_gb" {
  description = "Memory size in GB"
  type        = number
}

variable "psc_ip_name" {
  description = "Name for the PSC IP address"
  type        = string
}

variable "psc_endpoint_name" {
  description = "Name for the PSC endpoint forwarding rule"
  type        = string
}

variable "backup_location" {
  description = "The location where backups will be stored"
  type        = string
  default     = "us"
}

variable "log_retention_days" {
  description = "Number of days to retain transaction logs"
  type        = number
  default     = 7
}

variable "retained_backups" {
  description = "Number of backups to retain"
  type        = number
  default     = 7
}

variable "deletion_protection" {
  description = "Enable deletion protection for the instance"
  type        = bool
  default     = true
}

variable "retain_backups_on_delete" {
  description = "Retain backups when instance is deleted"
  type        = bool
  default     = true
}

variable "final_backup_on_delete" {
  description = "Create a final backup before deleting instance"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment label for the instance"
  type        = string
}

variable "team" {
  description = "Team label for the instance"
  type        = string
}

# ← Added: was causing "undeclared variable" warning
variable "service-tier" {
  description = "Service tier label"
  type        = string
  default     = ""
}