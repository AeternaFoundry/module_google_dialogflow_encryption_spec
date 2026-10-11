output "dialogflow_encryption_specs_id" {
  description = "Map of id values across all dialogflow_encryption_specs, keyed the same as var.dialogflow_encryption_specs except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_encryption_spec.dialogflow_encryption_specs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_encryption_specs_encryption_spec" {
  description = "Map of encryption_spec values across all dialogflow_encryption_specs, keyed the same as var.dialogflow_encryption_specs except keys with no encryption_spec are omitted"
  value       = { for k, v in google_dialogflow_encryption_spec.dialogflow_encryption_specs : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "dialogflow_encryption_specs_location" {
  description = "Map of location values across all dialogflow_encryption_specs, keyed the same as var.dialogflow_encryption_specs except keys with no location are omitted"
  value       = { for k, v in google_dialogflow_encryption_spec.dialogflow_encryption_specs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dialogflow_encryption_specs_project" {
  description = "Map of project values across all dialogflow_encryption_specs, keyed the same as var.dialogflow_encryption_specs except keys with no project are omitted"
  value       = { for k, v in google_dialogflow_encryption_spec.dialogflow_encryption_specs : k => v.project if v.project != null && length(v.project) > 0 }
}

