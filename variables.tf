variable "project" {
  type = "string"
  description = "The google cloud project name"
  default = "arxiv-sanity-380223"
}

variable "region" {
  type = "string"
  description = "The region for deployment"
  default = "us-west2"
}

variable "zone" {
  type = "string"
  description = "The availability zone for the deployment"
  default = "us-west2-a"
}

variable "GOOGLE_CREDENTIALS" {}