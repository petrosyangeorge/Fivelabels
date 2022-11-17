#=========================For_ALL========================
variable "product-name" {
  type    = string
  default = "fl"
}

variable "project-id" {
  type    = string
  default = "terraform-gcp-362210"
}

variable "env" {
  type    = string
  default = "stage"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

#=====================CS_Back_Upload=====================
variable "cs_back_upload-location" {
  type    = string
  default = "us-central1"
}

variable "cs_back_upload-iam_members" {
  type = map(string)
  default = {
    "role"   = "roles/storage.objectViewer"
    "member" = "allUsers"
  }
}

#=====================CS_Front_Static====================
variable "cs-front-static-names" {
  type    = list(string)
  default = ["petrosyangeorge.com", "admin.petrosyangeorge.com"]
}

variable "cs-front-static-storage_class" {
  type    = string
  default = "NEARLINE"
}

variable "cs-front-static-prefix" {
  type    = string
  default = ""
}

variable "cs-front-static-set_viewer_roles" {
  type    = bool
  default = true
}

variable "cs-front-static-viewers" {
  type    = string
  default = "allUsers"
}

variable "cs-front-static-second" {
  type = map(string)
  default = {
    "user1" = "spam@example.com"
    "user2" = "eggs@example.com"
  }
}

#======================CR_Back_Api======================
variable "cr-back-api-location" {
  type    = string
  default = "us-central1"
}

variable "cr-back-api-image" {
  type    = string
  default = "gcr.io/terraform-gcp-362210/nginx:latest"
}

variable "cr-back-api-members" {
  type    = string
  default = "allUsers"
}

#======================CSQL_db_pg=======================
variable "csql_db_pg-database_version" {
  type    = string
  default = "POSTGRES_14"
}

variable "csql_db_pg-deletion_protection" {
  type    = bool
  default = false
}

variable "csql_db_pg-region" {
  type    = string
  default = "us-central1"
}

variable "csql_db_pg-zone" {
  type    = string
  default = "us-central1-a"
}

variable "csql_db_pg-tier" {
  type    = string
  default = "db-f1-micro"
}

variable "csql-db-pg-authorized_networks" {
  type = map(string)
  default = {
    "name"  = "posgr"
    "value" = "37.252.95.250/32"
  }
}

variable "csql_db_pg-user_name" {
  type        = string
  default     = "myroot001"
  description = "Username for PostgreSQL Login"
}

variable "csql_db_pg-user_password" {
  type        = string
  default     = "myroot123"
  description = "User Password for PostgreSQL Login"
}