output "gke_outputs" {
  value = module.gke_cluster
}

output "google_project_details" {
  value = {
    project = var.project
    zone    = var.zone
    region  = var.region
  }
  description = "The project configuration details"
}