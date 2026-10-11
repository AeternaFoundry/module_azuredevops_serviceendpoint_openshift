resource "azuredevops_serviceendpoint_openshift" "serviceendpoint_openshifts" {
  for_each = var.serviceendpoint_openshifts

  project_id                 = each.value.project_id
  service_endpoint_name      = each.value.service_endpoint_name
  accept_untrusted_certs     = each.value.accept_untrusted_certs
  certificate_authority_file = each.value.certificate_authority_file
  description                = each.value.description
  server_url                 = each.value.server_url

  dynamic "auth_basic" {
    for_each = each.value.auth_basic != null ? [each.value.auth_basic] : []
    content {
      password = auth_basic.value.password
      username = auth_basic.value.username
    }
  }

  dynamic "auth_none" {
    for_each = each.value.auth_none != null ? [each.value.auth_none] : []
    content {
      kube_config = auth_none.value.kube_config
    }
  }

  dynamic "auth_token" {
    for_each = each.value.auth_token != null ? [each.value.auth_token] : []
    content {
      token = auth_token.value.token
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

