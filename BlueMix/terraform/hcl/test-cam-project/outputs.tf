#####################################################################
##
##      Created 6/9/20 by admin. for test-cam-project
##
#####################################################################

output "ibm_compute_vm_instance.sample_server / ipv4_address" {
  value = "${ibm_compute_vm_instance.sample_server.ipv4_address}"
}

