resource "google_storage_bucket" "backend" {
  name          = "backend-terraform-abs"
  location      = "US-CENTRAL1"
  force_destroy = true

  versioning {
    enabled = true
  }
}