variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "frontend_port" {
  description = "Frontend host port"
  type        = number
}

variable "product_service_port" {
  description = "Product service host port"
  type        = number
}

variable "order_service_port" {
  description = "Order service host port"
  type        = number
}