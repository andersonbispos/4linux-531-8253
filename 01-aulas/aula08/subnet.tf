resource "google_compute_subnetwork" "modelo-subnets" {
  count = length(var.default_vm_regions)

  #name = format("%s-%s", "subnet", var.vpc_name)
  name = var.vpc_name

  region        = var.default_vm_regions[count.index]
  ip_cidr_range = var.default_subnets_cidr[count.index]

  network = google_compute_network.vpc_network.self_link
}

