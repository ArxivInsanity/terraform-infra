output "cluster-container-name" {
  value = google_container_cluster.primary.name
}

output "node-pool-name" {
  value = google_container_node_pool.primary_nodes.name
}