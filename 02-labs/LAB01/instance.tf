resource "google_compute_instance" "vm1" {
  name         = "vm1"
  machine_type = "e2-medium"
  zone         = "southamerica-east1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "sudo apt update; sudo apt install nginx -y"
}