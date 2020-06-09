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
  ssh_key_ids = ["${ibm_compute_ssh_key.cam_public_key.id}"]
  os_reference_code = "DEBIAN_8_64"
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
}

resource "ibm_compute_ssh_key" "cam_public_key" {
  label = "CAM Public Key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvHm+smwRp/QkdNpMMz7wCuXfimwZ5FiCQP8LKFrbou32kxRqcsM+XKJIb/tomIBKfkvmf5IuEyVskJ1FZ7nvW/GKbf7zot+RTTrBC7NM67CV9yrEyYFqUaISNRc3SYwtBSSJ8Mp/7HslTiX/3f8T4OvecLQVeDG5c+nItwCnjsdvKNJkbQqLsxqM1Z2N5ldoYyY80qO+DAMOurZbZwGLIe27rOgSeBeaGOnmnB871xSx3j4Q0f9Ldh9fPMcFMTbVqOfSQD3h3RuXIhz4B8VTDCl7W5BAyAQgnn08serPC8O98YW49lD+iWmk9Y0v++OpDdQFkpugfP/UaYGmXQwET"
}