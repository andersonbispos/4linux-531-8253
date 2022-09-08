resource "google_compute_network" "vpc_network" {
  name = "vpc-lab01"

  auto_create_subnetworks = true
}