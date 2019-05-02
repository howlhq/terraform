resource "google_container_node_pool" "default" {
  name       = "${var.name}"
  location   = "${var.region}"
  cluster    = "${var.cluster_name}"
  node_count = "${var.node_count}"

  node_config {
    preemptible  = "${var.preemptible ? true : false}"
    machine_type = "${var.machine_type}"

    metadata {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
