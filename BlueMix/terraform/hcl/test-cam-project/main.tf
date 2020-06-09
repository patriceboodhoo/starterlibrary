#####################################################################
##
##      Created 6/9/20 by admin. for test-cam-project
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "ibm" {
  version = "~> 0.7"
}


resource "ibm_compute_vm_instance" "sample_server" {
  cores       = 4
  memory      = 8192
  domain      = "${var.sample_server_domain}"
  hostname    = "${var.sample_server_hostname}"
  datacenter  = "${var.sample_server_datacenter}"
  ssh_key_ids = ["${data.ibm_compute_ssh_key.cam_public_key.id}"]
  os_reference_code = "DEBIAN_8_64"
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

data "ibm_compute_ssh_key" "cam_public_key" {
  label = "CAM Public Key"
}