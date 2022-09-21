module "vpc" {
  source = "./tf-modules/vpc/"

  vpc_name    = "vpc-example"
  vpc_project = "terraform-4linux-8253"

  auto_create_subnetworks = true
}