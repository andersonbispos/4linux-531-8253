resource "google_compute_network" "tf_vpc_lab" {
  name = "tf-vpc-lab"

  auto_create_subnetworks = false
}