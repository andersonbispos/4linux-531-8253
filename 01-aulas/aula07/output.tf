// exemplos de output com `count + list`
/* output "vms_names" {
  description = "Nomes das vms"
  value       = google_compute_instance.vm_modelo[*].name
}

output "vms_public_ips" {
  description = "IPs publicos das vms"
  value       = google_compute_instance.vm_modelo[*].network_interface.0.access_config.0.nat_ip
} */

// exemplos de output com `for_each + map`
output "vms_names" {
  description = "Nomes das vms"
  value       = values(google_compute_instance.web_modelo)[*].name
}

output "vms_public_ips" {
  description = "IPs publicos das vms"
  value       = values(google_compute_instance.web_modelo)[*].network_interface.0.access_config.0.nat_ip
}