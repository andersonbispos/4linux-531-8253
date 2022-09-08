resource "google_compute_subnetwork" "subnet1" {
  name          = "vpc-network"
  ip_cidr_range = "10.10.0.0/22"
  region        = "us-central1"
  network       = "vpc-network"
}

/* resource "google_compute_subnetwork" "subnet2" {
  name          = "vpc-network"
  ip_cidr_range = "10.10.4.0/22"
  region        = "us-central1"
  network = "vpc-network"
} */

