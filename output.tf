output "connection_name" {
  description = "The connection name of the master instance to be used in connection strings"
  value       = google_sql_database_instance.dbtest1.connection_name
}

output "database_instance_name" {
  description = "The name of the Cloud SQL instance"
  value       = google_sql_database_instance.dbtest1.name
}

output "instance_edition" {
  value = var.edition
}

output "instance_db_version" {
  value = var.database_version
}

output "instance_region" {
  value = var.region
}

output "instance_machine_type" {
  value = var.tier
}

output "instance_disk_type" {
  value = var.disk_type
}

output "instance_disk_size" {
  value = var.disk_size
}

output "psc_connection_instructions" {
  description = "Instructions for connecting to the database via PSC"
  value       = <<-EOT
Connect to PostgreSQL using PSC:
Host: ${google_compute_address.psc_ip_address.address}
Port: 5432

Database: postgres (default)
Username: ${var.db_user}
Password: [Check your terraform.tfvars file]

Connection string example:
postgresql://${var.db_user}:YOUR_PASSWORD@${google_compute_address.psc_ip_address.address}:5432/postgres

psql command:
psql -h ${google_compute_address.psc_ip_address.address} -p 5432 -U ${var.db_user} -d postgres
EOT
}

output "psc_endpoint_name" {
  value = google_compute_forwarding_rule.consumer_psc_endpoint.name
}

output "psc_ip_address" {
  value = google_compute_address.psc_ip_address.address
}
