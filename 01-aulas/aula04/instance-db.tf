/* resource "google_compute_instance" "vm_db" {
  name         = "vm-db"
  machine_type = "e2-medium"
  zone         = google_compute_disk.db_data_disk.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link
  }

  attached_disk {
    source = google_compute_disk.db_data_disk.self_link
  }
} */