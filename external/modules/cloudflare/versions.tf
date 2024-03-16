terraform {
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
