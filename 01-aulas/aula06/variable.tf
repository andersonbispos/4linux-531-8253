variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "default_vmtype" {
  type    = string
  default = "e2-medium"
}

variable "vm_qtd" {
  type    = number
  default = 2
}

variable "db_data_zone" {
  description = "Zona para o banco de dados"
  type        = string
  default     = "us-central1-c"
}

variable "db_disk_name" {
  description = "Nome do disco de banco"
  type        = string
  default     = "db-data"
}

variable "vpc_name" {
  description = "Nome da VPC a ser utilizada"
  type        = string
  default     = "default"
}

variable "vm_zones" {
  description = "Zonas onde as vms serão criadas"
  type        = list(string)
  default     = ["us-central1-c", "southamerica-east1-c"]
}