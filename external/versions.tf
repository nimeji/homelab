terraform {
  required_version = "~> 1.9.5"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "com-nimeji"

    workspaces {
      name = "homelab-external"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.9.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 3.2.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "kubernetes" {
  # Use KUBE_CONFIG_PATH environment variables
  # Or in cluster service account
}
