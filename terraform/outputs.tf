output "jenkins_public_ip" {
  description = "Public IP of Jenkins server"
  value       = aws_instance.jenkins.public_ip
}

output "app_public_ip" {
  description = "Public IP of App server"
  value       = aws_instance.app.public_ip
}

output "monitoring_public_ip" {
  description = "Public IP of Monitoring server"
  value       = aws_instance.monitoring.public_ip
}

output "jenkins_private_ip" {
  description = "Private IP of Jenkins server"
  value       = aws_instance.jenkins.private_ip
}

output "app_private_ip" {
  description = "Private IP of App server"
  value       = aws_instance.app.private_ip
}

output "monitoring_private_ip" {
  description = "Private IP of Monitoring server"
  value       = aws_instance.monitoring.private_ip
}

output "ecr_repository_url" {
  description = "ECR repository URL for Docker push"
  value       = aws_ecr_repository.app.repository_url
}

output "jenkins_url" {
  description = "Jenkins UI URL"
  value       = "http://${aws_instance.jenkins.public_ip}:8080"
}

output "grafana_url" {
  description = "Grafana UI URL"
  value       = "http://${aws_instance.monitoring.public_ip}:3000"
}

output "prometheus_url" {
  description = "Prometheus UI URL"
  value       = "http://${aws_instance.monitoring.public_ip}:9090"
}