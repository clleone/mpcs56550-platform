terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

module "minikube" {
  source          = "./modules/minikube"
  environment     = var.environment
  minikube_cpus   = var.minikube_cpus
  minikube_memory = var.minikube_memory
}

module "local_dev" {
  source               = "./modules/local-dev"
  environment          = var.environment
  frontend_port        = var.frontend_port
  product_service_port = var.product_service_port
  order_service_port   = var.order_service_port
}

module "database" {
  source      = "./modules/database"
  environment = var.environment
  db_user     = var.db_user
  db_password = var.db_password
  db_name     = var.db_name
  db_port     = var.db_port
}

module "jenkins" {
  source       = "./modules/jenkins"
  environment  = var.environment
  jenkins_port = var.jenkins_port
  jenkins_agent_port = var.jenkins_agent_port
}