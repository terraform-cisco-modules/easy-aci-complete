#_______________________________________________________________________
#
# Terraform Required Parameters - Intersight Provider
# https://registry.terraform.io/providers/CiscoDevNet/intersight/latest
#_______________________________________________________________________

terraform {
  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      version = ">= 2.1.0"
    }
    ndo = {
      source  = "CiscoDevNet/mso"
      version = ">= 0.7.0"
    }
    utils = {
      source  = "netascode/utils"
      version = ">= 0.1.2"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aci" {
  cert_name   = var.certName
  password    = var.apicPass
  private_key = var.privateKey
  url         = "https://${var.apicHostname}"
  username    = var.apicUser
  insecure    = true
}

provider "ndo" {
  domain   = var.ndoDomain
  insecure = true
  password = var.ndoPass
  platform = "nd"
  url      = "https://${var.ndoHostname}"
  username = var.ndoUser
}
