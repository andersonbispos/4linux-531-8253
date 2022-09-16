module "vpc" {
  source = "./modules/rede"

  auto_subnets = false
  vpc_name     = "vpc-example-module"
  vpc_project  = "terraform-4linux-8253"
}