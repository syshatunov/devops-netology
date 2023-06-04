<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >=0.89.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >=0.89.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.vpc_network](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.vpc_subnet](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_name_network"></a> [vpc\_name\_network](#input\_vpc\_name\_network) | Infrastructure Network Name | `string` | n/a | yes |
| <a name="input_vpc_name_subnet"></a> [vpc\_name\_subnet](#input\_vpc\_name\_subnet) | Infrastructure Subnet Name | `string` | n/a | yes |
| <a name="input_vpc_subnet_cidr"></a> [vpc\_subnet\_cidr](#input\_vpc\_subnet\_cidr) | Subnet CIDR | `list(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_vpc_zone"></a> [vpc\_zone](#input\_vpc\_zone) | Infrastructure Zones | `string` | `"ru_central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_network_id"></a> [vpc\_network\_id](#output\_vpc\_network\_id) | Print network ID |
| <a name="output_vpc_subnet_id"></a> [vpc\_subnet\_id](#output\_vpc\_subnet\_id) | Print subnet ID |
<!-- END_TF_DOCS -->