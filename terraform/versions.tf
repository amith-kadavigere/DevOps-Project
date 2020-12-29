terraform {
  required_providers {
    # cloudflare = {
    #   source = "cloudflare/cloudflare"
    #   version = "~> 2.11.0"
    # }
    google = {
      source    = "hashicorp/google"
      version   = "~> 3.42.0"
    }
    # kubernetes = {
    #   source = "hashicorp/kubernetes"
    #   version = "~> 1.20.1"
    # }
    # vault = {
    #   source = "hashicorp/vault"
    #   version = "~> 2.14.0"
    #}
  }
  required_version = "~> 0.14.3"
}