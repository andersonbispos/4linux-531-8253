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

//exemplos de listas

variable "default_vm_zones" {
  description = "Zonas onde as vms serão criadas"
  type        = list(string)
  #default     = ["us-central1-c", "southamerica-east1-c"]
  default = ["us-central1-c", "us-central1-b", "us-central1-a"]
}

variable "web_names" {
  description = "Zonas onde as vms serão criadas"
  type        = list(string)
  default     = ["web1", "web2"]
}

variable "web_zones" {
  description = "Zonas onde as vms serão criadas"
  type        = list(string)
  default     = ["us-central1-c", "southamerica-east1-c"]
}


// exemplo de set

variable "web_name_set" {
  description = "Zonas onde as vms serão criadas"
  type        = set(string)
  default     = ["web4", "web3", "web1", "web2", "web4", "web1", "web2"]
}

// exemplos de map

variable "database_defs" {
  type        = map(string)
  description = "definicoes da dbserver1"
  default = {
    vm_name  = "dbserver1"
    vm_zone  = "us-east1-c"
    vm_image = "debian-cloud/debian-10"
    vm_type  = "e2-standard-2"
  }
}

variable "web_defs" {
  type        = map(string)
  description = "definicoes da webs"
  default = {
    web1 = "us-central1-c"
    web2 = "southamerica-east1-c"
  }
}

// exemplos de tuple

variable "tuple" {
  description = "Exemplo de definicao de tupla"
  type        = tuple([number, string, string, bool])
  default     = [3, "elementos", "diferentes", true]
}

variable "tuple_disk" {
  description = "Exemplo de tupla para definicoes do disco"
  type        = tuple([string, string, number])
  default     = ["db-data-disk", "pd-ssd", 50]
}

// exemplo de object

variable "object" {
  description = "Exemplo de object"
  type = object({
    name   = string
    region = string
    amount = number
    tags   = list(string)
  })
  default = { name = "Alfa", region = "southamerica-east1", amount = 5, tags = ["prod", "terraform"] }
}

variable "disk_object" {
  type = object({
    diskName = string
    diskType = string
    diskSize = number
  })
  default = { diskName = "dados", diskType = "pd-balanced",  diskSize = 30 }
}