output "jenkins_url" {
  description = "Jenkins server URL"
  value = "http://localhost:${var.jenkins_port}"
}