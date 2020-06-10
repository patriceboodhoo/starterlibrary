#####################################################################
##
##      Created 6/10/20 by admin. for debian-server
##
#####################################################################

output "ibm_compute_vm_instance.debian-server / ipv4_address" {
  value = "${ibm_compute_vm_instance.debian-server.ipv4_address}"
}

