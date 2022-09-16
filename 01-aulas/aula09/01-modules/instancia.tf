module vm {
    source = "./modules/instancia"

    vm_project = local.projeto
    vm_network = module.vpc.vpc_selflink
    vm_subnet = google_compute_subnetwork.subnet1.self_link
    vm_image = "debian-cloud/debian-11"
}