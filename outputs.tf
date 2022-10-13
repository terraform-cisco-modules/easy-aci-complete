output "access" {
  description = "Access module outputs."
  value       = module.access
}

output "admin" {
  description = "Admin module outputs."
  value       = module.admin
}

output "fabric" {
  description = "Fabric module outputs."
  value       = module.fabric
}

output "switch" {
  description = "Switch module outputs."
  value       = module.switch
}

output "system_settings" {
  description = "System Settings module outputs."
  value       = module.system_settings
}

#output "defaults_access" {
#  description = "Admin module outputs."
#  value       = local.model.defaults.access.pre_built_interface_policies
#}

# output "fabric" {
#   description = "Fabric module outputs."
#   value       = module.fabric
# }
