terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = var.org
    workspaces {
      name = var.workspace-name
    }
  }
}

provider "google" {
  project = var.gcp-project
  region  = var.gcp-region
  zone    = var.gcp-zone
}

resource "google_storage_bucket" "auto-expire" {
  name          = "arxiv-temp-123-bucket"
  location      = "US"
  force_destroy = true
}