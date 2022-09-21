module "vpc" {
  source = "./tf-modules/vpc/"

  vpc_name    = "vpc-example"
  vpc_project = "terraform-4linux-8253"

  auto_create_subnetworks = true
}

module "vm1" {
  source = "./tf-modules/instance/"

  vm_image = "debian-cloud/debian-11"

  vm_project = "terraform-4linux-8253"

  vm_network = module.vpc.vpc_self_link
  vm_subnet  = module.vpc.vpc_name
}