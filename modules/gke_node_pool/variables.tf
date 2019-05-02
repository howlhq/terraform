variable "cluster_name" {
  description = "Name of the GKE cluster"
}

variable "name" {
  description = "Name of the GKE node pool"
}

variable "region" {
  description = "Region to provision the GKE cluster in"
}

variable "machine_type" {
  default     = "n1-standard-1"
  description = "Machine size to use"
}

variable "node_count" {
  default     = 1
  description = "Number of nodes to provision"
}

variable "preemptible" {
  default     = false
  description = "Use preemptible nodes"
}
