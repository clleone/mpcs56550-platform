variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "minikube_cpus" {
  description = "CPUs allocated to minikube"
  type        = number
}

variable "minikube_memory" {
  description = "Memory allocated to minikube in MB"
  type        = number
}