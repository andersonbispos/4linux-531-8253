terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.35.0"
    }
  }
}

provider "google" {
  project     = "terraform-4linux-8253"
  region      = "southamerica-east1"
}