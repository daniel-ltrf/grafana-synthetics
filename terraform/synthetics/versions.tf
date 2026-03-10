terraform {
  required_version = ">= 1.1.0"

  cloud {
    organization = "{Enter the name you choose at terraform cloud}"

    workspaces {
      name = "grafana-synthetics-main"
    }
  }

  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 2.0.0"
    }
  }
}