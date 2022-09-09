resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = "vpc-network"

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}