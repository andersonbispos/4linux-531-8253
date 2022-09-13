locals {
  //db_zone = "us-east1-b"
  db_zone      = google_compute_disk.db_data_disk.zone
  subnet_names = var.vpc_name
}