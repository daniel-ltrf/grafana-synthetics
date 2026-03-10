provider "grafana" {
  url             = "https://{your-instance-name}.grafana.net/"
  auth            = var.grafana_service_token
  sm_url          = "https://synthetic-monitoring-api-eu-west-2.grafana.net"
  sm_access_token = var.sm_access_token
}