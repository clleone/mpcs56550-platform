terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "jenkins" {
  name         = "jenkins-docker"
  keep_locally = true
}

resource "docker_container" "jenkins" {
  name  = "jenkins-${var.environment}"
  image = docker_image.jenkins.image_id

  ports {
    internal = 8080
    external = var.jenkins_port
  }

  ports {
    internal = 50000
    external = var.jenkins_agent_port
  }

  volumes {
    volume_name    = docker_volume.jenkins_home.name
    container_path = "/var/jenkins_home"
  }

  volumes {
    host_path      = "/var/run/docker.sock"
    container_path = "/var/run/docker.sock"
  }
}

resource "docker_volume" "jenkins_home" {
  name = "jenkins_home_${var.environment}"
}