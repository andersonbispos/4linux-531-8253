output "vm_db_self_link" {
  description = "self link da vm de banco"
  value       = google_compute_instance.vm_db.self_link
}

output "vm_db_private_ip" {
  description = "IP privado da vm de banco"
  value       = google_compute_instance.vm_db.network_interface.0.network_ip
}

output "vm_db_public_ip" {
  description = "IP publico da vm de banco"
  value       = google_compute_instance.vm_db.network_interface.0.access_config.0.nat_ip
}

output "web1_self_link" {
  description = "self link da vm web1"
  value       = google_compute_instance.web1.self_link
}

output "web1_private_ip" {
  description = "IP privado da vm web1"
  value       = google_compute_instance.web1.network_interface.0.network_ip
}

output "web1_public_ip" {
  description = "IP publico da vm web1"
  value       = google_compute_instance.web1.network_interface.0.access_config.0.nat_ip
}