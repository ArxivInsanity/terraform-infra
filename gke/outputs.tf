output "cluster_name" {
  value       = google_container_cluster.primary.name
  description = "The name of the kubernetes cluster"
}

output "node_pool_name" {
  value       = google_container_node_pool.primary_nodes.name
  description = "The name of kubernetes node pool"
}

output "location" {
  value       = var.region
  description = "The region of the kubernetes cluster"
}

output "cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "The host of the kubernetes cluster"
}