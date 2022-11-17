
locals {
  #=========================CS_Back_Upload=====================
  cs-back-upload-name = "${var.product-name}-back-api-upload"
  #=========================CR_Back_Api========================
  cr-back-api-service_name = "${var.product-name}-back-api"
  #=========================CSQL_db_pg==========================
  csql-db-pg-name = "${var.product-name}-db-pg"
}