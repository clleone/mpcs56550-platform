output "namespace" {
  description = "Kubernetes namespace"
  value       = module.minikube.namespace
}

output "cluster_endpoint" {
  description = "Minikube cluster endpoint"
  value       = module.minikube.cluster_endpoint
}

output "db_host" {
  description = "Database host"
  value       = module.database.db_host
}

output "db_port" {
  description = "Database port"
  value       = module.database.db_port
}

output "db_name" {
  description = "Database name"
  value       = module.database.db_name
}

output "jenkins_url" {
  description = "Jenkins URL"
  value       = module.jenkins.jenkins_url
}

output "frontend_url" {
  description = "Frontend URL"
  value       = module.local_dev.frontend_url
}

output "product_service_url" {
  description = "Product service URL"
  value       = module.local_dev.product_service_url
}

output "order_service_url" {
  description = "Order service URL"
  value       = module.local_dev.order_service_url
}

output "network_name" {
  description = "Docker network name"
  value       = module.local_dev.network_name
}
