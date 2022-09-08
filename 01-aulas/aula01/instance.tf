resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = "vpc-network"
    subnetwork = "vpc-network"
  }

  attached_disk {
    source = "test-disk"
  }
}