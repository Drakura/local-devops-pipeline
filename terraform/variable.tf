variable "image_name" {
  description = "Docker image deployed by Terraform"
  type        = string
  default     = "local-devops-app:latest"
}

variable "container_name" {
  description = "Name of the deployed Docker container"
  type        = string
  default     = "local-devops-application"
}

variable "external_port" {
  description = "Host port used to access the application"
  type        = number
  default     = 8085
}
