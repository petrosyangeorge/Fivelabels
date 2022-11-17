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
  project = var.project-id
  region  = var.region
  zone    = var.zone
}