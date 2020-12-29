provider "google" {
  credentials = file("terraform-key-devops-project-299312.json")
  project     = "var.project"
  region      = "us-central1"
  zone        = "us-central1-a"
}