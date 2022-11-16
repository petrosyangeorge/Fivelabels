terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.53"
    }
  }
}

provider "google" {
  # Configuration options
  project     = var.google-project
  region      = var.google-region
  zone        = var.google-zone
  credentials = "keys.json"
}