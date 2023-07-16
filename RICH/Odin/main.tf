locals {
  model = yamldecode(data.utils_yaml_merge.model.output)
}

data "utils_yaml_merge" "model" {
  input = concat([
    for file in fileset(path.module, "../Asgard/switches/*.yaml") : file(file)], [
    for file in fileset(path.module, "../Wakanda/switches/*.yaml") : file(file)], [
    for file in fileset(path.module, "tenants/*.yaml") : file(file)]
  )
}

module "built_in_tenants" {
  source = "../../../terraform-aci-tenants"
  #source  = "terraform-cisco-modules/tenants/aci"
  #version = "2.1.7"

  for_each = {
    for v in lookup(local.model, "tenants", []) : v.name => v if length(regexall("^(common|infra|mgmt)$", v.name)) > 0
  }
  #aaep_to_epgs    = length(lookup(local.model, "access", {})) > 0 ? module.access["default"].aaep_to_epgs : {}
  aaep_to_epgs    = {}
  annotations     = var.annotations
  controller_type = var.controller_type
  management_epgs = var.management_epgs
  model           = each.value
  switch          = lookup(local.model, "switch", {})
  templates       = lookup(local.model, "templates", {})
  tenant          = each.key
  # Sensitive Variables for Tenant Policies
  # AWS Secret Key - NDO
  aws_secret_key = var.aws_secret_key
  # Azure Client Secret - NDO
  azure_client_secret = var.azure_client_secret
  # L3Out Routing Protocol Security
}

module "tenants" {
  depends_on = [
    module.built_in_tenants
  ]
  source = "../../../terraform-aci-tenants"
  #source  = "terraform-cisco-modules/tenants/aci"
  #version = "2.1.7"

  for_each = {
    for v in lookup(local.model, "tenants", []) : v.name => v if length(regexall("^(common|infra|mgmt)$", v.name)) == 0
  }
  aaep_to_epgs    = {}
  annotations     = var.annotations
  controller_type = var.controller_type
  model           = each.value
  switch          = lookup(local.model, "switch", {})
  templates       = lookup(local.model, "templates", {})
  tenant          = each.key
  # Sensitive Variables for Tenant Policies
  # AWS Secret Key - NDO
  aws_secret_key = var.aws_secret_key
  # Azure Client Secret - NDO
  azure_client_secret = var.azure_client_secret
}
