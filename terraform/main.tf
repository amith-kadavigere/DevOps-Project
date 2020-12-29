resource "google_container_cluster" "default" {
  name        = var.name
  project     = var.project
  description = "Demo GKE Cluster"
  location    = var.location

  addons_config {
      http_load_balancing {
        disabled = false
      }

      horizontal_pod_autoscaling {
        disabled = false
      }
    }
  
  min_master_version = "1.16"

  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "default" {
  name       = "${var.name}-node-pool"
  project    = var.project
  location   = var.location
  cluster    = google_container_cluster.default.name
  node_count = 1

  autoscaling {
    min_node_count    = 1
    max_node_count    = 3
  }

  management {
    auto_repair   = true
    auto_upgrade  = true
  }

  node_config {
    preemptible  = true
    machine_type = var.machine_type
    disk_size_gb = 10
    
    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
