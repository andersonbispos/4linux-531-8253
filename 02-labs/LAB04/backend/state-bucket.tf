resource "google_storage_bucket" "backend" {
  name          = "backend-terraform-abs-lab04"
  location      = "US-CENTRAL1"
  force_destroy = true

  versioning {
    enabled = true
  }
}