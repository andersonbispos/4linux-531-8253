resource "google_compute_network" "vpc_module" {
  name        = var.vpc_name
  description = var.vpc_description
  project     = var.vpc_project

  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_compute_firewall" "allow_icmp_default" {
  name = format("%s-%s", var.vpc_name, "allow-icmp-default")

  network = google_compute_network.vpc_module.self_link

  project     = var.vpc_project

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

 lifecycle {
   replace_triggered_by =[ google_compute_network.vpc_module ]
 }
}