project             = "dhg-vaccine-rateauto-nonpord"
instance_name       = "dhg-rateauto-postgres-test"
edition             = "ENTERPRISE"
database_version    = "POSTGRES_17"
region              = "us-central1"
availability_type   = "ZONAL"
network             = "dhg-rateauto-stage-vpc"
subnetwork          = "dhg-rateauto-stage-primary-subnet"
psc_ip_name         = "dhg-rateauto-postgres-test-psc-ip"
psc_endpoint_name   = "dhg-rateauto-postgres-test-psc-endpoint"
tier                = "db-custom-4-16384"
disk_type           = "PD_SSD"
disk_size           = 100
disk_autoresize     = true
cpu_count           = 2
memory_size_gb      = 4
db_user             = "postgres"

# Labels

team                = "database"
environment         = "test"
service-tier        = "p3"

# Backup Configuration
backup_location           = "us"
log_retention_days        = 7
retained_backups          = 7
deletion_protection       = true
retain_backups_on_delete  = true
final_backup_on_delete    = true
