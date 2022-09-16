resource "google_compute_disk" "db_data" {

  count = "${terraform.workspace == "default" ? 0 : 1}"
  
  name = format("%s-%s", "db-data", terraform.workspace)
  zone = var.vm_zones[terraform.workspace]
  
  type = "pd-ssd"
  size = 50
}