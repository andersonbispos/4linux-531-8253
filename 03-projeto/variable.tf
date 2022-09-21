variable "prov_path_file" {
  description = "Caminho do arquivo de provisionamento"
  default     = "./scripts/prov-back.sh"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "default_vmtype" {
  type    = string
  default = "e2-medium"
}

variable "auto_subnets" {
  description = "Usada para definir se as subnets devem ser criadas automaticamente"
  type        = bool
  default     = true
}

variable "vpc_name" {
  description = "Define o nome da VPC"
  type        = string
  default     = "vpc-projeto"
}

variable "default_vm_regions" {
  description = "Zonas onde as vms serão criadas"
  type        = list(string)
  default     = ["us-central1", "us-east1", "southamerica-east1"]
}

variable "default_group_sizes" {
  type        = map(number)
  description = "Quantidade de instancias por regiao"
  default = {
    us-central = 1
    us-east = 0
    sp = 3
  }
}