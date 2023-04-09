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

module "apis" {
  source = "./apis"
}
module "gke-cluster" {
  source  = "./gke"
  project = var.project
  region  = var.region

  depends_on = [module.apis]
}