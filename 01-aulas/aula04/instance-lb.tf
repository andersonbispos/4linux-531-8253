/* resource "google_compute_instance" "lb" {
  name         = "lb"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link
  }

  depends_on = [
    google_compute_instance.web1,
    google_compute_instance.web2
  ]

} */