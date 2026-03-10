resource "grafana_synthetic_monitoring_check" "Synthetics_BrowserCheck_login" {
  job     = "Browser:Login"
  target  = "login"
  enabled = true
  probes  = [1]
  labels = {
    check_type = "browser"
  }
  frequency = 300000
  timeout   = 60000
  settings {
    browser {
      script = file("${path.module}/../../scripts/browser.js")
    }
  }

  lifecycle {
    create_before_destroy = false
  }
}

resource "grafana_synthetic_monitoring_check" "Http_GetPizza" {
  job     = "Http:GetPizza"
  target  = "http"
  enabled = true
  probes  = [1]
  labels = {
    check_type = "http"
  }
  frequency = 300000
  timeout   = 60000
  settings {
    browser {
      script = file("${path.module}/../../scripts/http.js")
    }
  }

  lifecycle {
    create_before_destroy = false
  }
}
