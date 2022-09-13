resource "google_compute_network" "tf_vpc_lab" {
  name = var.vpc_name

  auto_create_subnetworks = var.rede_gerenciada
}