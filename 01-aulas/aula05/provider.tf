terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.35.0"
    }
  }

  backend "gcs" {
    bucket  = "backend-terraform-abs"
    prefix  = "state"
  }
}

provider "google" {
  project     = "terraform-4linux-8253"
  region      = "southamerica-east1"
  credentials = "/Users/anderson/Documents/gcp-svc/terraform-4linux-8253-f6be2bb58711.json"
}