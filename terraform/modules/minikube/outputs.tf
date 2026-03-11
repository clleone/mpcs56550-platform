output "namespace" {
  description = "Kubernetes namespace for this environment"
  value = kubernetes_namespace.environment.metadata[0].name
}

output "cluster_endpoint" {
  description = "Minikube cluster endpoint"
  value = "https://$(minikube ip):8443"
}