module "cr_back_api" {
  source  = "GoogleCloudPlatform/cloud-run/google"
  version = "~> 0.2.0"

  # Required variables
  service_name = local.cr-back-api-service_name
  project_id   = var.project-id
  location     = var.cr-back-api-location
  image        = var.cr-back-api-image
  members      = [var.cr-back-api-members, ]
  ports = {
    name = "http1"
    port = "80"
  }
  template_annotations = {
    "run.googleapis.com/execution-environment" = "gen2"
  }
}




