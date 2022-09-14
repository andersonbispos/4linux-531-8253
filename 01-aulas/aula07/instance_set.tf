/* resource "google_compute_instance" "vm_modelo_set" {

  for_each = var.web_name_set

  name = each.key
  zone = var.web_zones[0]

  machine_type = var.default_vmtype


  boot_disk {
    initialize_params {
      image = var.default_image
    }
  }

  network_interface {
    network = data.google_compute_network.my_network.self_link
    access_config {
    }
  }
} */