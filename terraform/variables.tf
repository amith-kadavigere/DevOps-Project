variable "name" {
  default = "demo-gke-cluster"
}

variable "project" {
  default = "devops-project-299312"
}

variable "location" {
  default = "us-central1-a"
}

variable "initial_node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-1"
}