resource "google_compute_disk" "db_data_disk" {
  name = "db-data-disk"
  type = "pd-ssd"
  zone = var.db_disk_zone
  size = var.db_disk_size
}