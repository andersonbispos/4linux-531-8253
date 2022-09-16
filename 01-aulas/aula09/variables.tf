variable "vm_prefix" {
  description = "Nome da VM"
  type        = string
  default     = "vm1"
}

variable "vm_types" {
  type        = map(string)
  description = "Definie o tamanho da maquina baseado no workspace"
  default = {
    default = "e2-standard-2"
    dev = "e2-micro"
  }
}

variable "vm_zones" {
  type = map(string)
  default = {
    default = "southamerica-east1-c"
    dev     = "us-central1-a"
  }
}