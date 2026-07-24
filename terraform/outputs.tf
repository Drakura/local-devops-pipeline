output "application_url" {
  description = "URL of the deployed application"
  value       = "http://localhost:${var.external_port}"
}

output "container_name" {
  description = "Docker container created by Terraform"
  value       = docker_container.application.name
}
