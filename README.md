<!-- BEGIN_TF_DOCS -->
# Ansible Demo
[![Tf Ansible Demo](https://github.com/leticiavalladares/ansible-webser-demo/actions/workflows/deploy-infra.yaml/badge.svg)](https://github.com/leticiavalladares/ansible-webser-demo/actions/workflows/deploy-infra.yaml)

## Web pages

<img width="1004" alt="three_pages" src="https://user-images.githubusercontent.com/112868363/195347512-ce1e2e33-d7b6-4e1c-a707-275c5782b94d.png">

## Requirements

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.34.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.pub_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.ansible_webserver_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.ubuntu_image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_subnet.pub_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_name"></a> [ami\_name](#input\_ami\_name) | The name of the ami | `string` | n/a | yes |
| <a name="input_aws_ami_owner"></a> [aws\_ami\_owner](#input\_aws\_ami\_owner) | The owner id of the ami | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of aws instance | `string` | n/a | yes |
| <a name="input_keypair"></a> [keypair](#input\_keypair) | The owner id of the ami | `string` | n/a | yes |
| <a name="input_pub_subnet"></a> [pub\_subnet](#input\_pub\_subnet) | Name of public subnet a | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of vpc | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_public_ip_addr"></a> [instance\_public\_ip\_addr](#output\_instance\_public\_ip\_addr) | n/a |
<!-- END_TF_DOCS -->