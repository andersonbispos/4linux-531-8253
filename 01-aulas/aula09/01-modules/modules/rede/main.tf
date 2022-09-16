resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
  project = var.vpc_project
  auto_create_subnetworks = var.auto_subnets
}

resource "google_compute_firewall" "allow_default_ports" {
  name    = "allow-default-ports"
  network = google_compute_network.vpc_network.self_link

  project = var.vpc_project

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}