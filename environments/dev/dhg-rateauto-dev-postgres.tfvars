project             = "dhg-vaccine-rateauto-nonpord"
instance_name       = "dhg-rateauto-postgres-dev"
edition             = "ENTERPRISE"
database_version    = "POSTGRES_17"
region              = "us-central1"
availability_type   = "ZONAL"
network             = "dhg-rateauto-dev-vpc"
subnetwork          = "dhg-rateauto-dev-primary-subnet"
psc_ip_name         = "dhg-rateauto-postgres-dev-psc-ip"
psc_endpoint_name   = "dhg-rateauto-postgres-dev-psc-endpoint"
tier                = "db-custom-4-16384"
disk_type           = "PD_SSD"
disk_size           = 10
disk_autoresize     = true
cpu_count           = 1
memory_size_gb      = 1.7
db_user             = "postgres"

# Labels

team                = "database"
environment         = "dev"
service-tier        = "p3"

# Backup Configuration
backup_location           = "us"
log_retention_days        = 7
retained_backups          = 7
deletion_protection       = true
retain_backups_on_delete  = true
final_backup_on_delete    = true
