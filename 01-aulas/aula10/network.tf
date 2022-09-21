module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.2.0"

    project_id   = "terraform-4linux-8253"
    network_name = "example-vpc"
    
    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-west1"
        },
    ]

}