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
| <a name="input_remote_password"></a> [remote\_password](#input\_remote\_password) | Remote Host Password for Configuration Backups. | `string` | `""` | no |
| <a name="input_ssh_key_contents"></a> [ssh\_key\_contents](#input\_ssh\_key\_contents) | SSH Private Key Based Authentication Contents. | `string` | `""` | no |
| <a name="input_ssh_key_passphrase"></a> [ssh\_key\_passphrase](#input\_ssh\_key\_passphrase) | SSH Private Key Based Authentication Passphrase. | `string` | `""` | no |
| <a name="input_radius_key"></a> [radius\_key](#input\_radius\_key) | RADIUS Key. | `string` | `""` | no |
| <a name="input_radius_monitoring_password"></a> [radius\_monitoring\_password](#input\_radius\_monitoring\_password) | RADIUS Monitoring Password. | `string` | `""` | no |
| <a name="input_tacacs_key"></a> [tacacs\_key](#input\_tacacs\_key) | TACACS Key. | `string` | `""` | no |
| <a name="input_tacacs_monitoring_password"></a> [tacacs\_monitoring\_password](#input\_tacacs\_monitoring\_password) | TACACS Monitoring Password. | `string` | `""` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin"></a> [admin](#output\_admin) | Domain Profile Outputs: including cluster and switch Moids, policy assignments. |

# Sub Modules

If you want to see documentation on Variables for Submodules use the links below:

## Terraform Registry
<!-- END_TF_DOCS -->