variable "rede_gerenciada" {
  description = "Define se as subnets devem ser criadas"
  type        = bool
}

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "provison_backend_path" {
  description = "Caminho para o arquivo de deploy"
  type    = string
  default = "./scripts/prov-back.sh"
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "tf-vpc-lab"
}

variable "subnet1_name" {
  description = "Subnet1 Nome"
  type        = string
  default     = "subnet1"
}

variable "subnet1_region" {
  description = "Subnet1 Regiao"
  type        = string
  default     = "us-east1"
}

variable "subnet2_name" {
  description = "Subnet2 Nome"
  type        = string
  default     = "subnet2"
}

variable "subnet2_region" {
  description = "Subnet2 Regiao"
  type        = string
  default     = "southamerica-east1"
}

variable "dbdisk_size" {
  description = "Define o tamanho do disco"
  type        = number
  default     = 50
}

variable "dbserver_name" {
  description = "Nome do banco"
  type        = string
  default     = "dbserver1"
}

variable "web1name" {
  type    = string
  default = "web1"
}

variable "web1zone" {
  type    = string
  default = "us-east1-c"
}

variable "web2name" {
  type    = string
  default = "web2"
}

variable "web2zone" {
  type    = string
  default = "southamerica-east1-c"
}