terraform {  
  backend "gcs" {
    bucket  = "tfstate-810986777208"
    prefix  = "terraform/state"
    credentials = "../../service-account.json"
  }
}