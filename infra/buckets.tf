#========================CS_back_upload============================
module "cs_back_upload" {
  source  = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version = "~> 1.3"

  # Required variables
  name       = local.cs-back-upload-name
  project_id = var.project-id
  location   = var.cs_back_upload-location

  iam_members = [
    {
      role   = var.cs_back_upload-iam_members["role"]
      member = var.cs_back_upload-iam_members["member"]
    }
  ]
}


#========================CS_front_static============================
module "cs_front_static" {
  source        = "terraform-google-modules/cloud-storage/google"
  version       = "~> 2.2"
  project_id    = var.project-id
  names         = var.cs-front-static-names
  storage_class = var.cs-front-static-storage_class
  #location   = "US"
  prefix           = var.cs-front-static-prefix
  set_viewer_roles = var.cs-front-static-set_viewer_roles
  viewers          = [var.cs-front-static-viewers]

  versioning = {
    first = true
  }
  website = {
    main_page_suffix = "index.html"
    not_found_page   = "error.html"
  }

  # bucket_admins = {
  #   second = var.cs-front-static-second["user1"]
  #   second = var.cs-front-static-second["user2"]
  # }
}