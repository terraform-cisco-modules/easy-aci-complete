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
| <a name="module_access"></a> [access](#module\_access) | ../terraform-aci-access | n/a |
| <a name="module_admin"></a> [admin](#module\_admin) | ../terraform-aci-admin | n/a |
| <a name="module_fabric"></a> [fabric](#module\_fabric) | ../terraform-aci-fabric | n/a |
| <a name="module_system_settings"></a> [system\_settings](#module\_system\_settings) | ../terraform-aci-system-settings | n/a |
| <a name="module_virtual_networking"></a> [virtual\_networking](#module\_virtual\_networking) | ../terraform-aci-virtual-networking | n/a |

## NOTE:
**When the Data is merged from the YAML files, it will run through the modules using for_each loop(s).  Sensitive Variables cannot be added to a for_each loop, instead use the variables below to add sensitive values for policies.**

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apicHostname"></a> [apicHostname](#input\_apicHostname) | Cisco APIC Hostname | `string` | `"apic.example.com"` | no |
| <a name="input_apicPass"></a> [apicPass](#input\_apicPass) | Password for User based Authentication. | `string` | `""` | no |
| <a name="input_apicUser"></a> [apicUser](#input\_apicUser) | Username for User based Authentication. | `string` | `"admin"` | no |
| <a name="input_certName"></a> [certName](#input\_certName) | Cisco ACI Certificate Name for SSL Based Authentication | `string` | `""` | no |
| <a name="input_privateKey"></a> [privateKey](#input\_privateKey) | Cisco ACI Private Key for SSL Based Authentication. | `string` | `""` | no |
| <a name="input_radius_key"></a> [radius\_key](#input\_radius\_key) | RADIUS Key. | `string` | `""` | no |
| <a name="input_radius_monitoring_password"></a> [radius\_monitoring\_password](#input\_radius\_monitoring\_password) | RADIUS Monitoring Password. | `string` | `""` | no |
| <a name="input_tacacs_key"></a> [tacacs\_key](#input\_tacacs\_key) | TACACS Key. | `string` | `""` | no |
| <a name="input_tacacs_monitoring_password"></a> [tacacs\_monitoring\_password](#input\_tacacs\_monitoring\_password) | TACACS Monitoring Password. | `string` | `""` | no |
| <a name="input_smtp_password"></a> [smtp\_password](#input\_smtp\_password) | Password to use if Secure SMTP is enabled for the Smart CallHome Destination Group Mail Server. | `string` | `""` | no |
| <a name="input_remote_password"></a> [remote\_password](#input\_remote\_password) | Remote Host Password. | `string` | `""` | no |
| <a name="input_ssh_key_contents"></a> [ssh\_key\_contents](#input\_ssh\_key\_contents) | SSH Private Key Based Authentication Contents. | `string` | `""` | no |
| <a name="input_ssh_key_passphrase"></a> [ssh\_key\_passphrase](#input\_ssh\_key\_passphrase) | SSH Private Key Based Authentication Passphrase. | `string` | `""` | no |
| <a name="input_ntp_key_1"></a> [ntp\_key\_1](#input\_ntp\_key\_1) | Key Assigned to NTP id 1. | `string` | `""` | no |
| <a name="input_ntp_key_2"></a> [ntp\_key\_2](#input\_ntp\_key\_2) | Key Assigned to NTP id 2. | `string` | `""` | no |
| <a name="input_ntp_key_3"></a> [ntp\_key\_3](#input\_ntp\_key\_3) | Key Assigned to NTP id 3. | `string` | `""` | no |
| <a name="input_ntp_key_4"></a> [ntp\_key\_4](#input\_ntp\_key\_4) | Key Assigned to NTP id 4. | `string` | `""` | no |
| <a name="input_ntp_key_5"></a> [ntp\_key\_5](#input\_ntp\_key\_5) | Key Assigned to NTP id 5. | `string` | `""` | no |
| <a name="input_snmp_authorization_key_1"></a> [snmp\_authorization\_key\_1](#input\_snmp\_authorization\_key\_1) | SNMP Authorization Key 1. | `string` | `""` | no |
| <a name="input_snmp_authorization_key_2"></a> [snmp\_authorization\_key\_2](#input\_snmp\_authorization\_key\_2) | SNMP Authorization Key 2. | `string` | `""` | no |
| <a name="input_snmp_authorization_key_3"></a> [snmp\_authorization\_key\_3](#input\_snmp\_authorization\_key\_3) | SNMP Authorization Key 3. | `string` | `""` | no |
| <a name="input_snmp_authorization_key_4"></a> [snmp\_authorization\_key\_4](#input\_snmp\_authorization\_key\_4) | SNMP Authorization Key 4. | `string` | `""` | no |
| <a name="input_snmp_authorization_key_5"></a> [snmp\_authorization\_key\_5](#input\_snmp\_authorization\_key\_5) | SNMP Authorization Key 5. | `string` | `""` | no |
| <a name="input_snmp_community_1"></a> [snmp\_community\_1](#input\_snmp\_community\_1) | SNMP Community 1. | `string` | `""` | no |
| <a name="input_snmp_community_2"></a> [snmp\_community\_2](#input\_snmp\_community\_2) | SNMP Community 2. | `string` | `""` | no |
| <a name="input_snmp_community_3"></a> [snmp\_community\_3](#input\_snmp\_community\_3) | SNMP Community 3. | `string` | `""` | no |
| <a name="input_snmp_community_4"></a> [snmp\_community\_4](#input\_snmp\_community\_4) | SNMP Community 4. | `string` | `""` | no |
| <a name="input_snmp_community_5"></a> [snmp\_community\_5](#input\_snmp\_community\_5) | SNMP Community 5. | `string` | `""` | no |
| <a name="input_snmp_privacy_key_1"></a> [snmp\_privacy\_key\_1](#input\_snmp\_privacy\_key\_1) | SNMP Privacy Key 1. | `string` | `""` | no |
| <a name="input_snmp_privacy_key_2"></a> [snmp\_privacy\_key\_2](#input\_snmp\_privacy\_key\_2) | SNMP Privacy Key 2. | `string` | `""` | no |
| <a name="input_snmp_privacy_key_3"></a> [snmp\_privacy\_key\_3](#input\_snmp\_privacy\_key\_3) | SNMP Privacy Key 3. | `string` | `""` | no |
| <a name="input_snmp_privacy_key_4"></a> [snmp\_privacy\_key\_4](#input\_snmp\_privacy\_key\_4) | SNMP Privacy Key 4. | `string` | `""` | no |
| <a name="input_snmp_privacy_key_5"></a> [snmp\_privacy\_key\_5](#input\_snmp\_privacy\_key\_5) | SNMP Privacy Key 5. | `string` | `""` | no |
| <a name="input_aes_passphrase"></a> [aes\_passphrase](#input\_aes\_passphrase) | Global AES Passphrase. | `string` | `""` | no |
| <a name="input_vmm_password_1"></a> [vmm\_password\_1](#input\_vmm\_password\_1) | Password for VMM Credentials Policy. | `string` | `""` | no |
| <a name="input_vmm_password_2"></a> [vmm\_password\_2](#input\_vmm\_password\_2) | Password for VMM Credentials Policy. | `string` | `""` | no |
| <a name="input_vmm_password_3"></a> [vmm\_password\_3](#input\_vmm\_password\_3) | Password for VMM Credentials Policy. | `string` | `""` | no |
| <a name="input_vmm_password_4"></a> [vmm\_password\_4](#input\_vmm\_password\_4) | Password for VMM Credentials Policy. | `string` | `""` | no |
| <a name="input_vmm_password_5"></a> [vmm\_password\_5](#input\_vmm\_password\_5) | Password for VMM Credentials Policy. | `string` | `""` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_virtual_networking"></a> [virtual\_networking](#output\_virtual\_networking) | System settings module outputs. |

# Sub Modules

If you want to see documentation on Variables for Submodules use the links below:

## Terraform Registry
<!-- END_TF_DOCS -->