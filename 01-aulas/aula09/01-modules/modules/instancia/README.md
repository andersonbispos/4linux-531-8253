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
| [google_compute_instance.vm1](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_image"></a> [vm\_image](#input\_vm\_image) | vm\_image | `string` | `"debian-cloud/debian-9"` | no |
| <a name="input_vm_machine_type"></a> [vm\_machine\_type](#input\_vm\_machine\_type) | vm\_machine\_type | `string` | `"e2-micro"` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Define o nome a ser utilizado ao criar novas instancias | `string` | `"vm"` | no |
| <a name="input_vm_network"></a> [vm\_network](#input\_vm\_network) | vm\_network | `string` | n/a | yes |
| <a name="input_vm_project"></a> [vm\_project](#input\_vm\_project) | vm\_project | `string` | n/a | yes |
| <a name="input_vm_subnet"></a> [vm\_subnet](#input\_vm\_subnet) | vm\_subnet | `string` | n/a | yes |
| <a name="input_vm_zone"></a> [vm\_zone](#input\_vm\_zone) | vm\_zone | `string` | `"us-central1-c"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | Nome da instancia |
| <a name="output_vm_selflink"></a> [vm\_selflink](#output\_vm\_selflink) | Self Link da instancia |
