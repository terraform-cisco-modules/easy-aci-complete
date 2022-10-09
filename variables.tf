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

Configuration Backups - Admin > Import/Export Policies
_______________________________________________________________________________________________________________________
*/
variable "remote_password_1" {
  default     = ""
  description = "Remote Host Password 1."
  sensitive   = true
  type        = string
}

variable "remote_password_2" {
  default     = ""
  description = "Remote Host Password 2."
  sensitive   = true
  type        = string
}

variable "remote_password_3" {
  default     = ""
  description = "Remote Host Password 3."
  sensitive   = true
  type        = string
}

variable "remote_password_4" {
  default     = ""
  description = "Remote Host Password 4."
  sensitive   = true
  type        = string
}

variable "remote_password_5" {
  default     = ""
  description = "Remote Host Password 5."
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

RADIUS — Variables
_______________________________________________________________________________________________________________________
*/
variable "radius_key_1" {
  default     = ""
  description = "RADIUS Key 1."
  sensitive   = true
  type        = string
}

variable "radius_key_2" {
  default     = ""
  description = "RADIUS Key 2."
  sensitive   = true
  type        = string
}

variable "radius_key_3" {
  default     = ""
  description = "RADIUS Key 3."
  sensitive   = true
  type        = string
}

variable "radius_key_4" {
  default     = ""
  description = "RADIUS Key 4."
  sensitive   = true
  type        = string
}

variable "radius_key_5" {
  default     = ""
  description = "RADIUS Key 5."
  sensitive   = true
  type        = string
}

variable "radius_monitoring_password_1" {
  default     = ""
  description = "RADIUS Monitoring Password 1."
  sensitive   = true
  type        = string
}

variable "radius_monitoring_password_2" {
  default     = ""
  description = "RADIUS Monitoring Password 2."
  sensitive   = true
  type        = string
}

variable "radius_monitoring_password_3" {
  default     = ""
  description = "RADIUS Monitoring Password 3."
  sensitive   = true
  type        = string
}

variable "radius_monitoring_password_4" {
  default     = ""
  description = "RADIUS Monitoring Password 4."
  sensitive   = true
  type        = string
}

variable "radius_monitoring_password_5" {
  default     = ""
  description = "RADIUS Monitoring Password 5."
  sensitive   = true
  type        = string
}


/*_____________________________________________________________________________________________________________________

TACACS+ — Variables
_______________________________________________________________________________________________________________________
*/
variable "tacacs_key_1" {
  default     = ""
  description = "TACACS Key 1."
  sensitive   = true
  type        = string
}

variable "tacacs_key_2" {
  default     = ""
  description = "TACACS Key 2."
  sensitive   = true
  type        = string
}

variable "tacacs_key_3" {
  default     = ""
  description = "TACACS Key 3."
  sensitive   = true
  type        = string
}

variable "tacacs_key_4" {
  default     = ""
  description = "TACACS Key 4."
  sensitive   = true
  type        = string
}

variable "tacacs_key_5" {
  default     = ""
  description = "TACACS Key 5."
  sensitive   = true
  type        = string
}

variable "tacacs_monitoring_password_1" {
  default     = ""
  description = "TACACS Monitoring Password 1."
  sensitive   = true
  type        = string
}

variable "tacacs_monitoring_password_2" {
  default     = ""
  description = "TACACS Monitoring Password 2."
  sensitive   = true
  type        = string
}

variable "tacacs_monitoring_password_3" {
  default     = ""
  description = "TACACS Monitoring Password 3."
  sensitive   = true
  type        = string
}

variable "tacacs_monitoring_password_4" {
  default     = ""
  description = "TACACS Monitoring Password 4."
  sensitive   = true
  type        = string
}

variable "tacacs_monitoring_password_5" {
  default     = ""
  description = "TACACS Monitoring Password 5."
  sensitive   = true
  type        = string
}

