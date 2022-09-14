resource "google_compute_instance" "web_modelo" {

  // exemplo de count + format
  #count = var.vm_qtd //quantidade fixa de iterações
  #name = format("%s-%s-%s", "vm", count.index, data.google_compute_network.my_network.name)

  // exemplo de count + list
  #count = length(var.web_names)
  #name = var.web_names[count.index]
  #zone = var.web_zones[count.index]

  // exemplo de for_each + map
  for_each = var.web_defs

  name = each.key
  zone = each.value

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

  #metadata_startup_script = file(var.prov_path_file)
}