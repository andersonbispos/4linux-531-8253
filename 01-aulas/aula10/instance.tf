module "vm1"{
    source = "github.com/andersonbispos/4linux-531-8253.git//02-labs/LAB09/tf-modules/instance"

    vm_project = "terraform-4linux-8253"

    vm_zone = "us-west1-c"
    vm_image = "debian-cloud/debian-10"

    vm_network = module.network.network_self_link
    vm_subnet = "subnet-01"
}