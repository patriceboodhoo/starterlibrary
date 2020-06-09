#####################################################################
##
##      Created 6/9/20 by admin. for test-cam-project
##
#####################################################################

variable "sample_server_domain" {
  default = "cam.ibm.com"
  type = "string"
  description = "The domain for the computing instance."
}

variable "sample_server_hostname" {
  type = "string"
  description = "The hostname for the computing instance."
}

variable "sample_server_datacenter" {
  description = "The location of the Data Center where the server will be deployed"
  default = "lon02"
  type = "string"
}

