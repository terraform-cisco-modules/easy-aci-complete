locals {
  model = yamldecode(data.utils_yaml_merge.model.output)
}

data "utils_yaml_merge" "model" {
  input = concat([
    for file in fileset(path.module, "admin/*.yaml") : file(file)], [
    for file in fileset(path.module, "defaults/*.yaml") : file(file)], [
    for file in fileset(path.module, "fabric:access-policies/*.yaml") : file(file)], [
    for file in fileset(path.module, "fabric:fabric-policies/*.yaml") : file(file)], [
    for file in fileset(path.module, "fabric:inventory/*.yaml") : file(file)], [
    for file in fileset(path.module, "system-settings/*.yaml") : file(file)], [
    for file in fileset(path.module, "tenants/*/*.yaml") : file(file)]
  )
}

module "access" {
  source = "../terraform-aci-access"
  model  = local.model
}

# module "admin" {
#   source = "../terraform-aci-admin"
#   model  = local.model
#   # Configuration Backup Sensitive Variables
#   remote_password    = var.remote_password
#   ssh_key_contents   = var.ssh_key_contents
#   ssh_key_passphrase = var.ssh_key_passphrase
#   # RADIUS Sensitive Variables
#   radius_key                 = var.radius_key
#   radius_monitoring_password = var.radius_monitoring_password
#   # Smart CallHome - SMTP Password
#   smtp_password = var.smtp_password
#   # TACACS Sensitive Variables
#   tacacs_key                 = var.tacacs_key
#   tacacs_monitoring_password = var.tacacs_monitoring_password
# }

# module "fabric" {
#   source = "../terraform-aci-fabric"
#   model  = local.model
#   # NTP Key
#   ntp_key = var.ntp_key
# }

# module "system_settings" {
#   source = "../terraform-aci-system-settings"
#   model  = local.model
#   # Global AES Passphrase Encryption Settings
#   aes_passphrase = var.aes_passphrase
# }

# output "model" {
#   value = local.model
# }
