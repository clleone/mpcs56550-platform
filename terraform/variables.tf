variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "db_user" {
  description = "PostgreSQL username"
  type        = string
}

variable "db_password" {
  description = "PostgreSQL password"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "PostgreSQL database name"
  type        = string
}

variable "db_port" {
  description = "PostgreSQL port"
  type        = number
  default     = 5432
}

variable "jenkins_port" {
  description = "Jenkins host port"
  type        = number
  default     = 8090
}

variable "jenkins_agent_port" {
  description = "Jenkins agent port"
  type        = number
  default     = 50000
}

variable "frontend_port" {
  description = "Frontend host port"
  type        = number
  default     = 8080
}

variable "product_service_port" {
  description = "Product service host port"
  type        = number
  default     = 5001
}

variable "order_service_port" {
  description = "Order service host port"
  type        = number
  default     = 5002
}

variable "minikube_cpus" {
  description = "CPUs allocated to minikube"
  type        = number
  default     = 2
}

variable "minikube_memory" {
  description = "Memory allocated to minikube in MB"
  type        = number
  default     = 4096
}