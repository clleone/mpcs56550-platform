output "db_host" {
  description = "Database host"
  value = docker_container.postgres.name
}

output "db_port" {
  description = "Database port"
  value = var.db_port
}

output "db_name" {
  description = "Database name"
  value = var.db_name
}