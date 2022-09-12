resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80","443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "default_http" {
    name                    = "default-http"
    network                 = "default"

    source_ranges           = ["0.0.0.0/0"]

    allow {
        ports    = ["80"]
        protocol = "tcp"
    }
}