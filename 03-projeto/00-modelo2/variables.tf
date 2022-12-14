variable "vpc_name" {
  type        = string
  description = "Nome da VPC"
  default     = "vpc-tf-projeto"
}

variable "back_provision_script" {
  default     = "./scripts/prov-back.sh"
  type        = string
  description = "Caminho para o script de provisionamento"
}

variable "instance_group_regions" {
  type    = list(any)
  default = ["us-central1", "asia-east1"]
}

variable "instance_group_sizes" {
  type    = list(any)
  default = [2, 1, 3]
}