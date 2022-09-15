resource "google_compute_region_instance_group_manager" "appserver_us_central" {
  name = "appserver-us-central"

  base_instance_name        = "webapps-us-central"
  region                    = var.default_vm_regions[0]

  version {
    instance_template = google_compute_instance_template.default.id
  }

  target_size = var.default_group_sizes["us-central"]
}

resource "google_compute_region_instance_group_manager" "appserver_us_east" {
  name = "appserver-us-east"

  base_instance_name        = "webapps-us-east"
  region                    = var.default_vm_regions[1]

  version {
    instance_template = google_compute_instance_template.default.id
  }

  target_size = var.default_group_sizes["us-east"]
}

resource "google_compute_region_instance_group_manager" "appserver_br" {
  name = "appserver-br"

  base_instance_name = "webapps-br"
  region             = var.default_vm_regions[2]

  version {
    instance_template = google_compute_instance_template.default.id
  }

  target_size = var.default_group_sizes["sp"]
}