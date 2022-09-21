## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image"></a> [image](#input\_image) | Esta variável deve do tipo string e deverá receber um nome de resource | `string` | `"debian-cloud/debian-9"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | Esta variável deve do tipo string e deverá receber um tamanho de máquina para o Google Cloud Platform | `string` | `"f1-micro"` | no |
| <a name="input_metadata_startup_script"></a> [metadata\_startup\_script](#input\_metadata\_startup\_script) | Passar script de inicializacao | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Esta variável deve do tipo string e deverá receber um nome de resource | `string` | `"vm-linux"` | no |
| <a name="input_network"></a> [network](#input\_network) | rede onde a vm deve ser provisionada | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Em qual zona sua instância irá ficar | `string` | `"us-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | n/a |
| <a name="output_vm_nat_ip"></a> [vm\_nat\_ip](#output\_vm\_nat\_ip) | n/a |
| <a name="output_vm_self_link"></a> [vm\_self\_link](#output\_vm\_self\_link) | n/a |
