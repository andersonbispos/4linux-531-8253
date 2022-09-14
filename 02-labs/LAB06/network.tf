resource "google_compute_network" "tf_vpc_lab" {
  name = var.vpc_object_defs["vpcName"]

  auto_create_subnetworks = var.vpc_object_defs["vpcAuto"]
}