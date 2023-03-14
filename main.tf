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

module "gke-cluster" {
  source  = "./gke"
  project = var.project
  region  = var.region
}