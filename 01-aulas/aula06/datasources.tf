data "google_compute_disk" "db_data_disk" {
  name = var.db_disk_name
  zone = var.db_data_zone
}

data "google_compute_network" "my_network" {
  name = var.vpc_name
}