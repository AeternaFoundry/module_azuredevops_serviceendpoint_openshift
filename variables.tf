variable "serviceendpoint_openshifts" {
  description = <<EOT
Map of serviceendpoint_openshifts, attributes below
Required:
    - project_id
    - service_endpoint_name
Optional:
    - accept_untrusted_certs
    - certificate_authority_file
    - description
    - server_url
    - auth_basic (block):
        - password (required)
        - username (required)
    - auth_none (block):
        - kube_config (optional)
    - auth_token (block):
        - token (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id                 = string
    service_endpoint_name      = string
    accept_untrusted_certs     = optional(bool)
    certificate_authority_file = optional(string)
    description                = optional(string)
    server_url                 = optional(string)
    auth_basic = optional(object({
      password = string
      username = string
    }))
    auth_none = optional(object({
      kube_config = optional(string)
    }))
    auth_token = optional(object({
      token = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_openshifts : (
        v.certificate_authority_file == null || (length(trimspace(v.certificate_authority_file)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_openshifts : (
        v.auth_basic == null || (length(trimspace(v.auth_basic.username)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_openshifts : (
        v.auth_basic == null || (length(trimspace(v.auth_basic.password)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_openshifts : (
        v.auth_token == null || (length(trimspace(v.auth_token.token)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

