resource "google_compute_subnetwork" "modelo-subnets" {
  count = length(var.default_subnet_regions)

  name = format("%s-%s", "subnet", var.vpc_object_defs["vpcName"])

  ip_cidr_range = var.default_subnets_cidr[count.index]
  region        = var.default_subnet_regions[count.index]

  network = google_compute_network.tf_vpc_lab.self_link
}