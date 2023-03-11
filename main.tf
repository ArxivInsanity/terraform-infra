terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "Arxiv-Insanity"
    workspaces {
      name = "app-infra"
    }
  }
}

provider "google" {
  project     = "arxiv-sanity-380223"
  region      = "us-west2"
  zone        = "us-west2-a"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "arxiv-temp-123-bucket"
  location      = "US"
  force_destroy = true
}