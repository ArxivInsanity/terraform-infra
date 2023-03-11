variable "project" {
  type        = string
  description = "The google cloud project name"
}

variable "region" {
  type        = string
  description = "The region for deployment"
}

variable "zone" {
  type        = string
  description = "The availability zone for the deployment"
}

variable "GOOGLE_CREDENTIALS" {}