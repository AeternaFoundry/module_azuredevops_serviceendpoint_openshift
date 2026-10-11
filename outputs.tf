output "serviceendpoint_openshifts_id" {
  description = "Map of id values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_openshifts_accept_untrusted_certs" {
  description = "Map of accept_untrusted_certs values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no accept_untrusted_certs are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.accept_untrusted_certs if v.accept_untrusted_certs != null }
}
output "serviceendpoint_openshifts_auth_basic" {
  description = "Map of auth_basic values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no auth_basic are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => one(v.auth_basic) if v.auth_basic != null && length(v.auth_basic) > 0 }
  sensitive   = true
}
output "serviceendpoint_openshifts_auth_none" {
  description = "Map of auth_none values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no auth_none are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => one(v.auth_none) if v.auth_none != null && length(v.auth_none) > 0 }
}
output "serviceendpoint_openshifts_auth_token" {
  description = "Map of auth_token values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no auth_token are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => one(v.auth_token) if v.auth_token != null && length(v.auth_token) > 0 }
}
output "serviceendpoint_openshifts_authorization" {
  description = "Map of authorization values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_openshifts_certificate_authority_file" {
  description = "Map of certificate_authority_file values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no certificate_authority_file are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.certificate_authority_file if v.certificate_authority_file != null && length(v.certificate_authority_file) > 0 }
}
output "serviceendpoint_openshifts_description" {
  description = "Map of description values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_openshifts_project_id" {
  description = "Map of project_id values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_openshifts_server_url" {
  description = "Map of server_url values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no server_url are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.server_url if v.server_url != null && length(v.server_url) > 0 }
}
output "serviceendpoint_openshifts_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_openshifts, keyed the same as var.serviceendpoint_openshifts except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_openshift.serviceendpoint_openshifts : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}

