resource "google_compute_instance" "vm1" {

  name = format("%s-%s", var.vm_prefix, terraform.workspace)

  machine_type = var.vm_types[terraform.workspace]
  zone         = var.vm_zones[terraform.workspace]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  allow_stopping_for_update = true
}

resource "google_compute_instance" "db" {

  count = "${terraform.workspace == "default" ? 0 : 1}"

  name = format("%s-%s", "db", terraform.workspace)

  machine_type = var.vm_types[terraform.workspace]
  zone         = var.vm_zones[terraform.workspace]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  attached_disk {
    source = google_compute_disk.db_data[0].self_link
  }

  allow_stopping_for_update = true
}