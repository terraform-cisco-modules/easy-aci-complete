locals {
  model = yamldecode(data.utils_yaml_merge.model.output)
}

data "utils_yaml_merge" "model" {
  input = concat([
    for file in fileset(path.module, "access/*.yaml") : file(file)], [
    for file in fileset(path.module, "admin/*.yaml") : file(file)], [
    for file in fileset(path.module, "defaults/*.yaml") : file(file)]
  )
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
  # TACACS Sensitive Variables
  tacacs_key                 = var.tacacs_key
  tacacs_monitoring_password = var.tacacs_monitoring_password
}
# output "model" {
#   value = local.model
# }