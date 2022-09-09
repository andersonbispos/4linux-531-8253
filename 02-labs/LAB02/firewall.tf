resource "google_compute_firewall" "allow-default" {
  name    = "allow-default"
  network = "vpc-lab02"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}