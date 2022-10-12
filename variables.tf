variable "annotation" {
  default     = ""
  description = "workspace tag value."
  type        = string
}

#______________________________________________
#
# ACI Provider Settings
#______________________________________________

variable "apicHostname" {
  default     = "apic.example.com"
  description = "Cisco APIC Hostname"
  type        = string
}

variable "apicPass" {
  default     = ""
  description = "Password for User based Authentication."
  sensitive   = true
  type        = string
}

variable "apicUser" {
  default     = "admin"
  description = "Username for User based Authentication."
  type        = string
}

variable "apic_version" {
  default     = "5.2(1g)"
  description = "The Version of ACI Running in the Environment."
  type        = string
}

variable "certName" {
  default     = ""
  description = "Cisco ACI Certificate Name for SSL Based Authentication"
  sensitive   = true
  type        = string
}

variable "privateKey" {
  default     = ""
  description = "Cisco ACI Private Key for SSL Based Authentication."
  sensitive   = true
  type        = string
}


/*_____________________________________________________________________________________________________________________

Admin > AAA > Authentication: RADIUS — Sensitive Variables
_______________________________________________________________________________________________________________________
*/
variable "radius_key" {
  default     = ""
  description = "RADIUS Key."
  sensitive   = true
  type        = string
}

variable "radius_monitoring_password" {
  default     = ""
  description = "RADIUS Monitoring Password."
  sensitive   = true
  type        = string
}


/*_____________________________________________________________________________________________________________________

Admin > AAA > Authentication: TACACS+ — Sensitive Variables
_______________________________________________________________________________________________________________________
*/
variable "tacacs_key" {
  default     = ""
  description = "TACACS Key."
  sensitive   = true
  type        = string
}

variable "tacacs_monitoring_password" {
  default     = ""
  description = "TACACS Monitoring Password."
  sensitive   = true
  type        = string
}

/*_____________________________________________________________________________________________________________________

Admin > External Data Collectors > Monitoring Destinations > Smart CallHome: {policy_name} — Sensitive Variables
_______________________________________________________________________________________________________________________
*/
variable "smtp_password" {
  default     = ""
  description = "Password to use if Secure SMTP is enabled for the Smart CallHome Destination Group Mail Server."
  sensitive   = true
  type        = string
}

/*_____________________________________________________________________________________________________________________

Admin > Import/Export > Remote Locations
_______________________________________________________________________________________________________________________
*/
variable "remote_password" {
  default     = ""
  description = "Remote Host Password."
  sensitive   = true
  type        = string
}

variable "ssh_key_contents" {
  default     = ""
  description = "SSH Private Key Based Authentication Contents."
  sensitive   = true
  type        = string
}

variable "ssh_key_passphrase" {
  default     = ""
  description = "SSH Private Key Based Authentication Passphrase."
  sensitive   = true
  type        = string
}


/*_____________________________________________________________________________________________________________________

Fabric > Policies > Pod > Date and Time
_______________________________________________________________________________________________________________________
*/
variable "ntp_key" {
  default     = ""
  description = "Key Assigned to NTP."
  sensitive   = true
  type        = string
}


/*_____________________________________________________________________________________________________________________

System > System Settings: Global AES Encryption Setting — Sensitive Variables
_______________________________________________________________________________________________________________________
*/
variable "aes_passphrase" {
  description = "Global AES Passphrase."
  sensitive   = true
  type        = string
}

