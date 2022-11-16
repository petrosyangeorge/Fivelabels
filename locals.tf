#=========================CS_Back_Upload=====================
locals {
  cs-back-upload-name = "${var.product-name}-back-api-upload"
}

#=========================CR_Back_Api========================
locals {
  cr-back-api-service_name = "${var.product-name}-back-api"
}

#=========================CSQL_db_pg==========================
locals {
  csql-db-pg-name = "${var.product-name}-db-pg"
}