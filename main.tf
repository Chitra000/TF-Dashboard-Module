module "example-module" {
  source = "./Dashboard"
  dashboard_name = var.dashboard_name
  permissions = var.permissions 
  dashboard = var.dashboard
}