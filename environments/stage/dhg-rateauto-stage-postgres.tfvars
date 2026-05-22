project             = "dhg-vaccine-rateauto-nonpord"
instance_name       = "dhg-rateauto-postgres-stage"
edition             = "ENTERPRISE"
database_version    = "POSTGRES_17"
region              = "us-central1"
availability_type   = "ZONAL"
network             = "dhg-rateauto-stage-vpc"
subnetwork          = "dhg-rateauto-stage-us-subnet"
psc_ip_name         = "dhg-rateauto-postgres-stage-psc-ip"
psc_endpoint_name   = "dhg-rateauto-postgres-stage-psc-endpoint"
tier                = "db-g1-small"
disk_type           = "PD_SSD"
disk_size           = 10
disk_autoresize     = true
cpu_count           = 1
memory_size_gb      = 1.7
db_user             = "postgres"

# Labels

team                = "database"
environment         = "stage"

# Backup Configuration
backup_location           = "us"
log_retention_days        = 7
retained_backups          = 7
deletion_protection       = true
retain_backups_on_delete  = true
final_backup_on_delete    = true
