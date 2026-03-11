variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "jenkins_port" {
  description = "Jenkins host port"
  type        = number
}

variable "jenkins_agent_port" {
  description = "Jenkins agent port"
  type        = number
  default     = 50000
}