# Local Automated Deployment Pipeline

This project demonstrates a local CI/CD deployment pipeline using:

- Git and GitHub
- Jenkins
- Docker
- Terraform
- Kreuzwerker Docker provider

## Pipeline

1. Jenkins checks GitHub for repository changes.
2. Jenkins checks out the repository.
3. Jenkins builds a Docker image.
4. Jenkins runs Terraform.
5. Terraform deploys the image as a Docker container.
6. The application is available at http://localhost:8085.

## Local architecture

Jenkins runs in a Docker container and has access to the host Docker
daemon through `/var/run/docker.sock`.

The application container is managed by Terraform using the
`kreuzwerker/docker` provider.
