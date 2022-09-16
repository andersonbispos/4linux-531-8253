variable "subnet_name" {
  description = "Nome para a subnet"
  type        = string
  default     = "subnet1"
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

