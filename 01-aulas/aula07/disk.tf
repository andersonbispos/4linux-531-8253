// Exemplo de definicoes de disco usando tupla

/* resource "google_compute_disk" "db_data_disk" {
  name = var.tuple_disk[0]
  type = var.tuple_disk[1]
  size = var.tuple_disk[2]

  zone = var.database_defs["vm_zone"]
} */

// Exemplo de definicoes de disco usando objeto

resource "google_compute_disk" "db_data_disk" {
  name = var.disk_object["diskName"]
  type = var.disk_object["diskType"]
  size = var.disk_object["diskSize"]

  zone = var.database_defs["vm_zone"]
}