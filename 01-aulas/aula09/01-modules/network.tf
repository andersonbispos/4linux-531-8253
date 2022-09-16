module "vpc" {
  source = "./modules/rede"

  vpc_project  = local.projeto

  auto_subnets = false
  vpc_name     = "vpc-example-module"
}