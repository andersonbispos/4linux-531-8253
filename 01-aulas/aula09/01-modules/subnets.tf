resource "google_compute_subnetwork" "subnet1" {
  project = local.projeto

  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.subnet_region
  network       = module.vpc.vpc_selflink
}
