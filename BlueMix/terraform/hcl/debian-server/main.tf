#####################################################################
##
##      Created 6/10/20 by admin. for debian-server
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "ibm" {
  version = "~> 0.7"
}


resource "ibm_compute_vm_instance" "debian-server" {
  cores       = 4
  memory      = 8192
  domain      = "${var.debian-server_domain}"
  hostname    = "${var.debian-server_hostname}"
  datacenter  = "${var.debian-server_datacenter}"
  ssh_key_ids = ["${data.ibm_compute_ssh_key.admin_public_key.id}"]
  os_reference_code = "DEBIAN_8_64"
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

data "ibm_compute_ssh_key" "admin_public_key" {
  label = "Server Admin Public Key"
}