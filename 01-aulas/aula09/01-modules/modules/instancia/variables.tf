variable "vm_project" {
  description = "vm_project"
  type        = string
}

variable "vm_network" {
  description = "vm_network"
  type        = string
}

variable "vm_subnet" {
  description = "vm_subnet"
  type        = string
}

variable "vm_name" {
  description = "Define o nome a ser utilizado ao criar novas instancias"
  type        = string
  default     = "vm"
}

variable "vm_machine_type" {
  description = "vm_machine_type"
  type        = string
  default     = "e2-micro"
}

variable "vm_zone" {
  description = "vm_zone"
  type        = string
  default     = "us-central1-c"
}

variable "vm_image" {
  description = "vm_image"
  type        = string
  default     = "debian-cloud/debian-9"
}