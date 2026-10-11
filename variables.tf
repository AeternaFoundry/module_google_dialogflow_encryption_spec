variable "dialogflow_encryption_specs" {
  description = <<EOT
Map of dialogflow_encryption_specs, attributes below
Required:
    - location
    - encryption_spec (block):
        - kms_key (required)
Optional:
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    location = string
    project  = optional(string)
    encryption_spec = object({
      kms_key = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

