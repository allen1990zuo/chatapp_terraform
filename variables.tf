variable "do_api_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "doks_cluster_name" {
  description = "DOKS cluster name"
  type        = string
}

variable "doks_cluster_region" {
  description = "DOKS cluster region"
  type        = string
}

variable "doks_cluster_version" {
  description = "Kubernetes version provided by DOKS"
  type        = string
  default     = "1.27.4-do.0" # Grab the latest version slug from "doctl kubernetes options versions"
}

variable "doks_cluster_pool_size" {
  description = "DOKS cluster node pool size"
  type        = string
}

variable "doks_cluster_pool_node_count" {
  description = "DOKS cluster worker nodes count"
  type        = number
}