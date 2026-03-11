output "network_name" {
  description = "Docker network name"
  value = docker_network.local.name
}

output "frontend_url" {
  description = "Frontend URL"
  value = "http://localhost:${var.frontend_port}"
}

output "product_service_url" {
  description = "Product service URL"
  value = "http://localhost:${var.product_service_port}"
}

output "order_service_url" {
  description = "Order service URL"
  value = "http://localhost:${var.order_service_port}"
}