output "alert_manager_url" {
  value = "https://alertmanager.${var.domain}"
}

output "prometheus_url" {
  value = "https://prometheus.${var.domain}"
}

output "grafana_url" {
  value = "https://grafana.${var.domain}"
}