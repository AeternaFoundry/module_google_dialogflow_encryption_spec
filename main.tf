resource "google_dialogflow_encryption_spec" "dialogflow_encryption_specs" {
  for_each = var.dialogflow_encryption_specs

  location = each.value.location
  project  = each.value.project

  encryption_spec {
    kms_key = each.value.encryption_spec.kms_key
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

