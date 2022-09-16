output "vm_name" {
  description = "Nome da instancia"
  value       = google_compute_instance.vm1.name
}

output "vm_selflink" {
  description = "Self Link da instancia"
  value       = google_compute_instance.vm1.self_link
}