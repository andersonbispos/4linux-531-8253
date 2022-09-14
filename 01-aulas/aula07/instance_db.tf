resource "google_compute_instance" "dbserver1" {

  name = var.database_defs["vm_name"]
  zone = var.database_defs["vm_zone"]

  machine_type = var.database_defs["vm_type"]


  boot_disk {
    initialize_params {
      image = var.database_defs["vm_image"]
    }
  }

  network_interface {
    network = data.google_compute_network.my_network.self_link
    access_config {
    }
  }

  attached_disk {
    source = google_compute_disk.db_data_disk.self_link
  }
}