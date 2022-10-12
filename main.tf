locals {
  model = yamldecode(data.utils_yaml_merge.model.output)
}

data "utils_yaml_merge" "model" {
  input = concat([
    for file in fileset(path.module, "admin/*.yaml") : file(file)], [
    for file in fileset(path.module, "defaults/*.yaml") : file(file)], [
    for file in fileset(path.module, "fabric:access-policies/*.yaml") : file(file)], [
    for file in fileset(path.module, "fabric:fabric-policies/*.yaml") : file(file)], [
    for file in fileset(path.module, "switches/*.yaml") : file(file)], [
    for file in fileset(path.module, "system-settings/*.yaml") : file(file)], [
    for file in fileset(path.module, "tenants/*/*.yaml") : file(file)], [
    for file in fileset(path.module, "virtual-networking/*.yaml") : file(file)]
  )
}

module "access" {
  source = "../terraform-aci-access"
  model  = local.model
  # VMM Domain Credentials Passwords
  vmm_password_1 = var.vmm_password_1
  vmm_password_2 = var.vmm_password_2
  vmm_password_3 = var.vmm_password_3
  vmm_password_4 = var.vmm_password_4
  vmm_password_5 = var.vmm_password_5
}

module "admin" {
  source = "../terraform-aci-admin"
  model  = local.model
  # Configuration Backup Sensitive Variables
  remote_password    = var.remote_password
  ssh_key_contents   = var.ssh_key_contents
  ssh_key_passphrase = var.ssh_key_passphrase
  # RADIUS Sensitive Variables
  radius_key                 = var.radius_key
  radius_monitoring_password = var.radius_monitoring_password
  # Smart CallHome - SMTP Password
  smtp_password = var.smtp_password
  # TACACS Sensitive Variables
  tacacs_key                 = var.tacacs_key
  tacacs_monitoring_password = var.tacacs_monitoring_password
}

module "fabric" {
  source = "../terraform-aci-fabric"
  model  = local.model
  # Date and Time/NTP Sensitive Variables
  ntp_key_1 = var.ntp_key_1
  ntp_key_2 = var.ntp_key_2
  ntp_key_3 = var.ntp_key_3
  ntp_key_4 = var.ntp_key_4
  ntp_key_5 = var.ntp_key_5
  # SNMP Sensitive Variables
  snmp_authorization_key_1 = var.snmp_authorization_key_1
  snmp_authorization_key_2 = var.snmp_authorization_key_2
  snmp_authorization_key_3 = var.snmp_authorization_key_3
  snmp_authorization_key_4 = var.snmp_authorization_key_4
  snmp_authorization_key_5 = var.snmp_authorization_key_5
  snmp_community_1         = var.snmp_community_1
  snmp_community_2         = var.snmp_community_2
  snmp_community_3         = var.snmp_community_3
  snmp_community_4         = var.snmp_community_4
  snmp_community_5         = var.snmp_community_5
  snmp_privacy_key_1       = var.snmp_privacy_key_1
  snmp_privacy_key_2       = var.snmp_privacy_key_2
  snmp_privacy_key_3       = var.snmp_privacy_key_3
  snmp_privacy_key_4       = var.snmp_privacy_key_4
  snmp_privacy_key_5       = var.snmp_privacy_key_5
}

module "switch" {
  source = "../terraform-aci-switch"
  model  = local.model
}

module "system_settings" {
  source = "../terraform-aci-system-settings"
  model  = local.model
  # Global AES Passphrase Encryption Settings
  aes_passphrase = var.aes_passphrase
}

# output "model" {
#   value = local.model
# }
