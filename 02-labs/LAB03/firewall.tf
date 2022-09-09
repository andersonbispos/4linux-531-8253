resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.tf_vpc_lab.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  /* disabled = true */
}

resource "google_compute_firewall" "default_ports" {
  name    = "allow-default-ports"
  network = google_compute_network.tf_vpc_lab.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  /* deny {
    protocol = "tcp"
    ports    = ["22"]
  } */

  source_ranges = ["0.0.0.0/0"]
}