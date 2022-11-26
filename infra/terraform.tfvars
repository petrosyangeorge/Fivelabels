#=========================For_ALL========================
product-name = "fl"
project-id   = "terraform-gcp-362210"
region       = "us-central1"
zone         = "us-central1-a"

#=====================CS_Back_Upload=====================
cs_back_upload-location    = "us-central1"
cs_back_upload-iam_members = { "role" : "roles/storage.objectViewer", "member" : "allUsers" }

#=====================CS_Front_Static====================
cs-front-static-names            = ["petrosyangeorge.com", "admin.petrosyangeorge.com"]
cs-front-static-storage_class    = "NEARLINE"
cs-front-static-prefix           = ""
cs-front-static-set_viewer_roles = true
cs-front-static-viewers          = "allUsers"
cs-front-static-second           = { "user1" : "spam@example.com", "user2" : "eggs@example.com" }

#======================CR_Back_Api======================
cr-back-api-location = "us-central1"
cr-back-api-image    = "gcr.io/terraform-gcp-362210/nginx:latest"
cr-back-api-members  = "allUsers"

#======================CSQL_db_pg=======================
csql_db_pg-database_version    = "POSTGRES_14"
csql_db_pg-deletion_protection = false
csql_db_pg-region              = "us-central1"
csql_db_pg-zone                = "us-central1-a"
csql_db_pg-tier                = "db-f1-micro"
csql-db-pg-authorized_networks = { "name" : "posgr", "value" : "37.252.80.193/32" }
csql_db_pg-user_name           = "myroot001"
csql_db_pg-user_password       = "myroot123"