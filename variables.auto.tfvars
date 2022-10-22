#____________________________________________________________
#
# Global - Variables
#____________________________________________________________

# Begin Variables
annotation = "orchestrator:terraform:easy-aci-v2.0"
annotations = [
  {
    key   = "orchestrator"
    value = "terraform:easy-aci:v2.0"
  }
]
apicHostname    = "asgard-apic01.rich.ciscolabs.com"
apicUser        = "admin"
apic_version    = "5.2(4e)"
controller_type = "apic"
management_epgs = [
  {
    name = "inband"
    type = "inb"
  },
  {
    name = "ooband"
    type = "oob"
  }
]