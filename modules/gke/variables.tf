variable "name" {
  description = "Name of the GKE cluster"
}

variable "region" {
  description = "Region to provision the GKE cluster in"
}

variable "machine_type" {
  default     = "n1-standard-1"
  description = "Machine Type to Provision"
}
