## Modelo de instance template para redes `auto`

resource "google_compute_instance_template" "default" {
  name        = "appserver-template"
  description = "This template is used to create app server instances."

  tags = ["webapps"]

  instance_description = "description assigned to instances"
  machine_type         = var.default_vmtype

  // Create a new boot disk from an image
  disk {
    source_image = var.default_image
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {

    }
  }

  metadata_startup_script = file(var.prov_path_file)

}