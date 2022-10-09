<!-- BEGIN_TF_DOCS -->
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Developed by: Cisco](https://img.shields.io/badge/Developed%20by-Cisco-blue)](https://developer.cisco.com)

# Easy ACI - Comprehensive example for ACI & NDO

## Environment Variables

### Terraform Cloud/Enterprise - Workspace Variables
- Add variable apicPass with the value of [your-apic-password]

### Linux and Windows
```bash
export TF_VAR_apicPass="<your-apic-password>"
```

## Auto-completion Notes:

If you would like to enable Auto Completion in the Pools File for ip, mac, uuid, wwnn, and wwpn perform the following in Visual Studio Code.

### Install the YAML extension by Red Hat
`Extensions`: Search for YAML and Select the 'YAML Language Support by Red Hat'

### Add the YAML Schema's below to the Visual Studio Code Settings

`Settings` » `Settings`: Search for `YAML:Schemas`.

Click: `Edit in settings.json`

Configure the following in `yaml.schemas`
```bash
"https://raw.githubusercontent.com/terraform-cisco-modules/easy-aci-complete/main/schemas/pools.json": "pools.yaml"
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 2.1.0 |
| <a name="requirement_utils"></a> [utils](#requirement\_utils) | >= 0.1.2 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_utils"></a> [utils](#provider\_utils) | 0.1.2 |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_admin"></a> [admin](#module\_admin) | ../terraform-aci-admin | n/a |

## NOTE:
**When the Data is merged from the YAML files, it will run through the modules using for_each loop(s).  Sensitive Variables cannot be added to a for_each loop, instead use the variables below to add sensitive values for policies.**

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_annotation"></a> [annotation](#input\_annotation) | workspace tag value. | `string` | `""` | no |
| <a name="input_apicHostname"></a> [apicHostname](#input\_apicHostname) | Cisco APIC Hostname | `string` | `"apic.example.com"` | no |
| <a name="input_apicPass"></a> [apicPass](#input\_apicPass) | Password for User based Authentication. | `string` | `""` | no |
| <a name="input_apicUser"></a> [apicUser](#input\_apicUser) | Username for User based Authentication. | `string` | `"admin"` | no |
| <a name="input_apic_version"></a> [apic\_version](#input\_apic\_version) | The Version of ACI Running in the Environment. | `string` | `"5.2(1g)"` | no |
| <a name="input_certName"></a> [certName](#input\_certName) | Cisco ACI Certificate Name for SSL Based Authentication | `string` | `""` | no |
| <a name="input_privateKey"></a> [privateKey](#input\_privateKey) | Cisco ACI Private Key for SSL Based Authentication. | `string` | `""` | no |
| <a name="input_remote_password_1"></a> [remote\_password\_1](#input\_remote\_password\_1) | Remote Host Password 1. | `string` | `""` | no |
| <a name="input_remote_password_2"></a> [remote\_password\_2](#input\_remote\_password\_2) | Remote Host Password 2. | `string` | `""` | no |
| <a name="input_remote_password_3"></a> [remote\_password\_3](#input\_remote\_password\_3) | Remote Host Password 3. | `string` | `""` | no |
| <a name="input_remote_password_4"></a> [remote\_password\_4](#input\_remote\_password\_4) | Remote Host Password 4. | `string` | `""` | no |
| <a name="input_remote_password_5"></a> [remote\_password\_5](#input\_remote\_password\_5) | Remote Host Password 5. | `string` | `""` | no |
| <a name="input_ssh_key_contents"></a> [ssh\_key\_contents](#input\_ssh\_key\_contents) | SSH Private Key Based Authentication Contents. | `string` | `""` | no |
| <a name="input_ssh_key_passphrase"></a> [ssh\_key\_passphrase](#input\_ssh\_key\_passphrase) | SSH Private Key Based Authentication Passphrase. | `string` | `""` | no |
| <a name="input_radius_key_1"></a> [radius\_key\_1](#input\_radius\_key\_1) | RADIUS Key 1. | `string` | `""` | no |
| <a name="input_radius_key_2"></a> [radius\_key\_2](#input\_radius\_key\_2) | RADIUS Key 2. | `string` | `""` | no |
| <a name="input_radius_key_3"></a> [radius\_key\_3](#input\_radius\_key\_3) | RADIUS Key 3. | `string` | `""` | no |
| <a name="input_radius_key_4"></a> [radius\_key\_4](#input\_radius\_key\_4) | RADIUS Key 4. | `string` | `""` | no |
| <a name="input_radius_key_5"></a> [radius\_key\_5](#input\_radius\_key\_5) | RADIUS Key 5. | `string` | `""` | no |
| <a name="input_radius_monitoring_password_1"></a> [radius\_monitoring\_password\_1](#input\_radius\_monitoring\_password\_1) | RADIUS Monitoring Password 1. | `string` | `""` | no |
| <a name="input_radius_monitoring_password_2"></a> [radius\_monitoring\_password\_2](#input\_radius\_monitoring\_password\_2) | RADIUS Monitoring Password 2. | `string` | `""` | no |
| <a name="input_radius_monitoring_password_3"></a> [radius\_monitoring\_password\_3](#input\_radius\_monitoring\_password\_3) | RADIUS Monitoring Password 3. | `string` | `""` | no |
| <a name="input_radius_monitoring_password_4"></a> [radius\_monitoring\_password\_4](#input\_radius\_monitoring\_password\_4) | RADIUS Monitoring Password 4. | `string` | `""` | no |
| <a name="input_radius_monitoring_password_5"></a> [radius\_monitoring\_password\_5](#input\_radius\_monitoring\_password\_5) | RADIUS Monitoring Password 5. | `string` | `""` | no |
| <a name="input_tacacs_key_1"></a> [tacacs\_key\_1](#input\_tacacs\_key\_1) | TACACS Key 1. | `string` | `""` | no |
| <a name="input_tacacs_key_2"></a> [tacacs\_key\_2](#input\_tacacs\_key\_2) | TACACS Key 2. | `string` | `""` | no |
| <a name="input_tacacs_key_3"></a> [tacacs\_key\_3](#input\_tacacs\_key\_3) | TACACS Key 3. | `string` | `""` | no |
| <a name="input_tacacs_key_4"></a> [tacacs\_key\_4](#input\_tacacs\_key\_4) | TACACS Key 4. | `string` | `""` | no |
| <a name="input_tacacs_key_5"></a> [tacacs\_key\_5](#input\_tacacs\_key\_5) | TACACS Key 5. | `string` | `""` | no |
| <a name="input_tacacs_monitoring_password_1"></a> [tacacs\_monitoring\_password\_1](#input\_tacacs\_monitoring\_password\_1) | TACACS Monitoring Password 1. | `string` | `""` | no |
| <a name="input_tacacs_monitoring_password_2"></a> [tacacs\_monitoring\_password\_2](#input\_tacacs\_monitoring\_password\_2) | TACACS Monitoring Password 2. | `string` | `""` | no |
| <a name="input_tacacs_monitoring_password_3"></a> [tacacs\_monitoring\_password\_3](#input\_tacacs\_monitoring\_password\_3) | TACACS Monitoring Password 3. | `string` | `""` | no |
| <a name="input_tacacs_monitoring_password_4"></a> [tacacs\_monitoring\_password\_4](#input\_tacacs\_monitoring\_password\_4) | TACACS Monitoring Password 4. | `string` | `""` | no |
| <a name="input_tacacs_monitoring_password_5"></a> [tacacs\_monitoring\_password\_5](#input\_tacacs\_monitoring\_password\_5) | TACACS Monitoring Password 5. | `string` | `""` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin"></a> [admin](#output\_admin) | Domain Profile Outputs: including cluster and switch Moids, policy assignments. |

# Sub Modules

If you want to see documentation on Variables for Submodules use the links below:

## Terraform Registry
<!-- END_TF_DOCS -->