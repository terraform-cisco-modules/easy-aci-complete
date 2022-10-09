locals {
  model = yamldecode(data.utils_yaml_merge.model.output)
}

data "utils_yaml_merge" "model" {
  input = concat([
    for file in fileset(path.module, "admin/*.yaml") : file(file)], [
    file("${path.module}/defaults/defaults.yaml")]
  )
}

module "admin" {
  source = "../terraform-aci-admin"
  model  = local.model
  # Configuration Backup Sensitive Variables
  remote_password_1  = var.remote_password_1
  remote_password_2  = var.remote_password_2
  remote_password_3  = var.remote_password_3
  remote_password_4  = var.remote_password_4
  remote_password_5  = var.remote_password_5
  ssh_key_contents   = var.ssh_key_contents
  ssh_key_passphrase = var.ssh_key_passphrase
  # RADIUS Sensitive Variables
  radius_key_1                 = var.radius_key_1
  radius_key_2                 = var.radius_key_2
  radius_key_3                 = var.radius_key_3
  radius_key_4                 = var.radius_key_4
  radius_key_5                 = var.radius_key_5
  radius_monitoring_password_1 = var.radius_monitoring_password_1
  radius_monitoring_password_2 = var.radius_monitoring_password_2
  radius_monitoring_password_3 = var.radius_monitoring_password_3
  radius_monitoring_password_4 = var.radius_monitoring_password_4
  radius_monitoring_password_5 = var.radius_monitoring_password_5
  # TACACS Sensitive Variables
  tacacs_key_1                 = var.tacacs_key_1
  tacacs_key_2                 = var.tacacs_key_2
  tacacs_key_3                 = var.tacacs_key_3
  tacacs_key_4                 = var.tacacs_key_4
  tacacs_key_5                 = var.tacacs_key_5
  tacacs_monitoring_password_1 = var.tacacs_monitoring_password_1
  tacacs_monitoring_password_2 = var.tacacs_monitoring_password_2
  tacacs_monitoring_password_3 = var.tacacs_monitoring_password_3
  tacacs_monitoring_password_4 = var.tacacs_monitoring_password_4
  tacacs_monitoring_password_5 = var.tacacs_monitoring_password_5
}
