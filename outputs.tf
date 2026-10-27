output "serviceendpoint_openshifts_id" {
  description = "Map of id values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.id }
}
output "serviceendpoint_openshifts_accept_untrusted_certs" {
  description = "Map of accept_untrusted_certs values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.accept_untrusted_certs }
}
output "serviceendpoint_openshifts_auth_basic" {
  description = "Map of auth_basic values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => one(v.auth_basic) }
  sensitive   = true
}
output "serviceendpoint_openshifts_auth_none" {
  description = "Map of auth_none values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => one(v.auth_none) }
}
output "serviceendpoint_openshifts_auth_token" {
  description = "Map of auth_token values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => one(v.auth_token) }
}
output "serviceendpoint_openshifts_authorization" {
  description = "Map of authorization values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.authorization }
}
output "serviceendpoint_openshifts_certificate_authority_file" {
  description = "Map of certificate_authority_file values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.certificate_authority_file }
}
output "serviceendpoint_openshifts_description" {
  description = "Map of description values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.description }
}
output "serviceendpoint_openshifts_project_id" {
  description = "Map of project_id values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.project_id }
}
output "serviceendpoint_openshifts_server_url" {
  description = "Map of server_url values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.server_url }
}
output "serviceendpoint_openshifts_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.service_endpoint_name }
}

