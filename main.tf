resource "google_sql_database_instance" "dbtest1" {
  name                = var.instance_name
  database_version    = var.database_version
  region              = var.region
  project             = var.project
  deletion_protection = var.deletion_protection

  settings {
    tier              = var.tier
    edition           = var.edition
    disk_type         = var.disk_type
    disk_size         = var.disk_size
    disk_autoresize   = var.disk_autoresize
    availability_type = var.availability_type

    user_labels = {
      environment = var.environment
      team        = var.team
    }

    backup_configuration {
      enabled                        = true
      start_time                     = "00:00"
      location                       = var.backup_location
      point_in_time_recovery_enabled = false
      transaction_log_retention_days = var.log_retention_days

      backup_retention_settings {
        retained_backups = var.retained_backups
        retention_unit   = "COUNT"
      }
    }

    ip_configuration {
      #ssl_mode      = "ENCRYPTED_ONLY"  # Cloud SQL for PostgreSQL does not support ssl_mode as a Terraform argument. Only Supported with google-beta provider
      ipv4_enabled = false

      psc_config {
        psc_enabled               = true
        allowed_consumer_projects = [var.project]
      }
    }

    deletion_protection_enabled = var.deletion_protection
  }
}

resource "google_sql_user" "db_user" {
  name     = var.db_user
  instance = google_sql_database_instance.dbtest1.name
  password = var.db_password
}

resource "google_compute_address" "psc_ip_address" {
  name         = var.psc_ip_name
  project      = var.project
  region       = var.region
  subnetwork   = var.subnetwork
  address_type = "INTERNAL"
}

resource "google_compute_forwarding_rule" "consumer_psc_endpoint" {
  name                  = var.psc_endpoint_name
  project               = var.project
  region                = var.region
  load_balancing_scheme = ""
  target                = google_sql_database_instance.dbtest1.psc_service_attachment_link
  network               = var.network
  subnetwork            = var.subnetwork
  ip_address            = google_compute_address.psc_ip_address.self_link
}
