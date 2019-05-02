resource "google_container_cluster" "cluster" {
  name     = "${var.name}"
  location = "${var.region}"

  remove_default_node_pool = true # auto remove after installation
  initial_node_count       = 1    # a node pool is required

  # Setting an empty username and password explicitly disables basic auth
  master_auth {
    username = ""
    password = ""
  }
}
