variable "auto_subnets" {
  description = "Usada para definir se as subnets devem ser criadas automaticamente"
  type        = bool
}

variable "vpc_name" {
  description = "Define o nome da VPC"
  type        = string
  default     = "vpc-terraform"
}

variable "subnet_region" {
  description = "Região para a subnet"
  type        = string
  default     = "us-central1"
}

variable "subnet_cidr" {
  description = "Range CIDR para a subnet"
  type        = string
  default     = "10.10.0.0/22"
}

variable "subnet_name" {
  description = "Nome para a subnet"
  type        = string
  default     = "subnet1"
}

variable "db_disk_zone" {
  description = "Zona do disco de dados"
  type        = string
  default     = "us-central1-a"
}

variable "db_disk_size" {
  description = "Tamanho do disco de dados"
  type        = number
  default     = 30

  validation {
    condition     = var.db_disk_size <= 50
    error_message = "Tamanho máximo do disco de dados é de 50GB"
  }
}

variable "prov_path_file" {
  description = "Caminho do arquivo de provisionamento"
  default     = "./scripts/prov-back.sh"
}