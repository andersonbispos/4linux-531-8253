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
  default     = false
}

variable "vpc_name" {
  description = "Define o nome da VPC"
  type        = string
  default     = "vpc-terraform"
}

variable "default_subnets_cidr" {
  type        = list(string)
  description = "cids para serem atribuidas as subnets"
  default     = ["192.168.10.0/24", "192.168.20.0/24"]
}

variable "default_vm_regions" {
  description = "Zonas onde as vms serão criadas"
  type        = list(string)
  default     = ["us-central1", "southamerica-east1"]
}

variable "vm_zones_us" {
  description = "Zonas onde as vms serão criadas"
  type        = list(string)
  default     = ["us-central1-c", "us-central1-a"]
}

variable "default_group_sizes" {
  type        = map(number)
  description = "Quantidade de instancias por regiao"
  default = {
    us = 1
    sp = 1
  }
}