resource "google_compute_instance" "vm_modelo" {

  count = var.vm_qtd

  name = format("%s-%s-%s", "vm", count.index, data.google_compute_network.my_network.name)

  machine_type = var.default_vmtype
  zone         = var.vm_zones[count.index]

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
}