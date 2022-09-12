resource "google_compute_subnetwork" "subnet1" {
  name          = "vpc-network"
  ip_cidr_range = "10.10.0.0/22"
  region        = "us-central1"
  network       = "google_compute_network.vpc_network.self_link"
  #network       =  "vpc-network"
}

/* resource "google_compute_subnetwork" "subnet2" {
  name          = "vpc-network"
  ip_cidr_range = "10.10.4.0/22"
  region        = "southamerica-east1"
  network = google_compute_network.vpc_network.name
} */

