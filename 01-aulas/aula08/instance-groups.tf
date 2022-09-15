resource "google_compute_region_instance_group_manager" "appserver_us" {
  name = "appserver-us"

  base_instance_name        = "webapps-us"
  region                    = var.default_vm_regions[0]
  distribution_policy_zones = var.vm_zones_us

  version {
    instance_template = google_compute_instance_template.template_us.id
    #instance_template = google_compute_instance_template.default.id //para rede auto
  }

  target_size = var.default_group_sizes["us"]
}

resource "google_compute_region_instance_group_manager" "appserver_br" {
  name = "appserver-br"

  base_instance_name = "webapps-br"
  region             = var.default_vm_regions[1]

  version {
    instance_template = google_compute_instance_template.template_br.id
  }

  target_size = var.default_group_sizes["sp"]
}