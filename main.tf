terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "Arxiv-Insanity"
    workspaces {
      name = "app-infra"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_storage_bucket" "auto-expire" {
  name          = "arxiv-temp-123-bucket"
  location      = "US"
  force_destroy = true
}