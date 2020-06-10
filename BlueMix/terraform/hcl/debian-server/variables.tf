#####################################################################
##
##      Created 6/10/20 by admin. for debian-server
##
#####################################################################

variable "debian-server_domain" {
  default = "cam.ibm.com"
  type = "string"
  description = "The domain for the computing instance."
}

variable "debian-server_hostname" {
  type = "string"
  description = "The hostname for the computing instance."
}

variable "debian-server_datacenter" {
  default = "par01"
  type = "string"
  description = "The datacenter in which you want to provision the instance. NOTE: If dedicated_host_name or dedicated_host_id is provided then the datacenter should be same as the dedicated host datacenter."
}


