# k8s
resource "digitalocean_kubernetes_cluster" "primary" {
  name    = var.doks_cluster_name
  region  = var.doks_cluster_region
  version = var.doks_cluster_version

  node_pool {
    name       = "pool-${var.doks_cluster_name}"
    size       = var.doks_cluster_pool_size
    node_count = var.doks_cluster_pool_node_count
  }
}
