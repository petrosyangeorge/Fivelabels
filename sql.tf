module "csql_db_pg" {
  source  = "GoogleCloudPlatform/sql-db/google//modules/postgresql"
  version = "8.0.0"

  # Required variables
  project_id          = var.csql_db_pg-project_id
  name                = local.csql-db-pg-name
  database_version    = var.csql_db_pg-database_version
  deletion_protection = var.csql_db_pg-deletion_protection
  region              = var.csql_db_pg-region
  zone                = var.csql_db_pg-zone
  tier                = var.csql_db_pg-tier
  create_timeout      = "20m"
  ip_configuration = {
    authorized_networks = [
      {
        "name"  = var.csql-db-pg-authorized_networks["name"]  #var  | map
        "value" = var.csql-db-pg-authorized_networks["value"] #var  |map
      }
    ]
    ipv4_enabled       = true
    private_network    = null
    require_ssl        = true
    allocated_ip_range = null
  }

  user_name     = var.csql_db_pg-user_name
  user_password = var.csql_db_pg-user_password
}

/*resource "time_sleep" "wait_30_min" {
  create_duration = "30m"
}*/
